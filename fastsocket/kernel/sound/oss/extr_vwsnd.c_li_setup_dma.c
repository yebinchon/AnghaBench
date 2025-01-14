
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int lithium_t ;
struct TYPE_7__ {unsigned long baseval; unsigned long cfgval; unsigned long ctlval; int * lith; TYPE_2__ const* desc; } ;
typedef TYPE_1__ dma_chan_t ;
struct TYPE_8__ {unsigned long ad1843_slot; unsigned long direction; int ctlreg; int cfgreg; int basereg; } ;
typedef TYPE_2__ dma_chan_desc_t ;


 int ASSERT (int) ;
 int DBGEV (char*,TYPE_1__*,TYPE_2__ const*,int *,unsigned long,int,int,int,int) ;
 int DBGPV (char*,int ,unsigned long) ;
 int DBGRV () ;
 unsigned long LI_CCFG_FMT_16BIT ;
 unsigned long LI_CCFG_FMT_8BIT ;
 unsigned long LI_CCFG_LOCK ;
 unsigned long LI_CCFG_MODE_MONO ;
 unsigned long LI_CCFG_MODE_STEREO ;
 int LI_CCFG_SLOT ;
 unsigned long LI_CCTL_DMA_ENABLE ;
 unsigned long LI_CCTL_RESET ;
 int LI_CCTL_SIZE ;
 int LI_CCTL_TMASK ;
 int LI_CCTL_TPTR ;
 unsigned long SHIFT_FIELD (unsigned long,int ) ;
 int li_writel (int *,int ,unsigned long) ;

__attribute__((used)) static void li_setup_dma(dma_chan_t *chan,
    const dma_chan_desc_t *desc,
    lithium_t *lith,
    unsigned long buffer_paddr,
    int bufshift,
    int fragshift,
    int channels,
    int sampsize)
{
 unsigned long mode, format;
 unsigned long size, tmask;

 DBGEV("(chan=0x%p, desc=0x%p, lith=0x%p, buffer_paddr=0x%lx, "
      "bufshift=%d, fragshift=%d, channels=%d, sampsize=%d)\n",
      chan, desc, lith, buffer_paddr,
      bufshift, fragshift, channels, sampsize);



 li_writel(lith, desc->ctlreg, LI_CCTL_RESET);

 ASSERT(channels == 1 || channels == 2);
 if (channels == 2)
  mode = LI_CCFG_MODE_STEREO;
 else
  mode = LI_CCFG_MODE_MONO;
 ASSERT(sampsize == 1 || sampsize == 2);
 if (sampsize == 2)
  format = LI_CCFG_FMT_16BIT;
 else
  format = LI_CCFG_FMT_8BIT;
 chan->desc = desc;
 chan->lith = lith;







 ASSERT(!(buffer_paddr & 0xFF));
 chan->baseval = (buffer_paddr >> 8) | 1 << (37 - 8);

 chan->cfgval = ((chan->cfgval & ~LI_CCFG_LOCK) |
   SHIFT_FIELD(desc->ad1843_slot, LI_CCFG_SLOT) |
   desc->direction |
   mode |
   format);

 size = bufshift - 6;
 tmask = 13 - fragshift;
 ASSERT(size >= 2 && size <= 7);
 ASSERT(tmask >= 1 && tmask <= 7);
 chan->ctlval = ((chan->ctlval & ~LI_CCTL_RESET) |
   SHIFT_FIELD(size, LI_CCTL_SIZE) |
   (chan->ctlval & ~LI_CCTL_DMA_ENABLE) |
   SHIFT_FIELD(tmask, LI_CCTL_TMASK) |
   SHIFT_FIELD(0, LI_CCTL_TPTR));

 DBGPV("basereg 0x%x = 0x%lx\n", desc->basereg, chan->baseval);
 DBGPV("cfgreg 0x%x = 0x%lx\n", desc->cfgreg, chan->cfgval);
 DBGPV("ctlreg 0x%x = 0x%lx\n", desc->ctlreg, chan->ctlval);

 li_writel(lith, desc->basereg, chan->baseval);
 li_writel(lith, desc->cfgreg, chan->cfgval);
 li_writel(lith, desc->ctlreg, chan->ctlval);

 DBGRV();
}
