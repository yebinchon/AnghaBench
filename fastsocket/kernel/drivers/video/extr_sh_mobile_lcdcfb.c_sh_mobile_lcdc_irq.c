
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sh_mobile_lcdc_priv {struct sh_mobile_lcdc_chan* ch; } ;
struct sh_mobile_lcdc_chan {int frame_end; scalar_t__ new_pan_offset; scalar_t__ pan_offset; struct sh_mobile_lcdc_priv* lcdc; scalar_t__ dma_handle; int frame_end_wait; int enabled; } ;
typedef int irqreturn_t ;


 int ARRAY_SIZE (struct sh_mobile_lcdc_chan*) ;
 int IRQ_HANDLED ;
 unsigned long LDINTR_FS ;
 int LDINTR_VEE ;
 unsigned long LDINTR_VES ;
 unsigned long LDRCNTR_MRS ;
 unsigned long LDRCNTR_SRS ;
 int LDSA1R ;
 int _LDINTR ;
 int _LDRCNTR ;
 int _LDSR ;
 int lcdc_chan_is_sublcd (struct sh_mobile_lcdc_chan*) ;
 int lcdc_read (struct sh_mobile_lcdc_priv*,int ) ;
 int lcdc_write (struct sh_mobile_lcdc_priv*,int ,unsigned long) ;
 int lcdc_write_chan_mirror (struct sh_mobile_lcdc_chan*,int ,scalar_t__) ;
 int sh_mobile_lcdc_clk_off (struct sh_mobile_lcdc_priv*) ;
 int wake_up (int *) ;

__attribute__((used)) static irqreturn_t sh_mobile_lcdc_irq(int irq, void *data)
{
 struct sh_mobile_lcdc_priv *priv = data;
 struct sh_mobile_lcdc_chan *ch;
 unsigned long tmp;
 unsigned long ldintr;
 int is_sub;
 int k;


 ldintr = tmp = lcdc_read(priv, _LDINTR);




 tmp &= 0xffffff00 & ~LDINTR_VEE;
 lcdc_write(priv, _LDINTR, tmp);


 is_sub = (lcdc_read(priv, _LDSR) & (1 << 10)) ? 1 : 0;


 for (k = 0; k < ARRAY_SIZE(priv->ch); k++) {
  ch = &priv->ch[k];

  if (!ch->enabled)
   continue;


  if (ldintr & LDINTR_FS) {
   if (is_sub == lcdc_chan_is_sublcd(ch)) {
    ch->frame_end = 1;
    wake_up(&ch->frame_end_wait);

    sh_mobile_lcdc_clk_off(priv);
   }
  }


  if (ldintr & LDINTR_VES) {
   unsigned long ldrcntr = lcdc_read(priv, _LDRCNTR);

   lcdc_write_chan_mirror(ch, LDSA1R, ch->dma_handle +
            ch->new_pan_offset);
   if (lcdc_chan_is_sublcd(ch))
    lcdc_write(ch->lcdc, _LDRCNTR,
        ldrcntr ^ LDRCNTR_SRS);
   else
    lcdc_write(ch->lcdc, _LDRCNTR,
        ldrcntr ^ LDRCNTR_MRS);
   ch->pan_offset = ch->new_pan_offset;
  }
 }

 return IRQ_HANDLED;
}
