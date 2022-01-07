
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sh_mobile_lcdc_priv {TYPE_1__* ch; } ;
struct TYPE_3__ {int enabled; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int LDPMR ;
 unsigned long START_LCDC ;
 int _LDCNT2R ;
 int _LDDCKSTPR ;
 int cpu_relax () ;
 int lcdc_read (struct sh_mobile_lcdc_priv*,int ) ;
 int lcdc_read_chan (TYPE_1__*,int ) ;
 int lcdc_write (struct sh_mobile_lcdc_priv*,int ,int) ;

__attribute__((used)) static void sh_mobile_lcdc_start_stop(struct sh_mobile_lcdc_priv *priv,
          int start)
{
 unsigned long tmp = lcdc_read(priv, _LDCNT2R);
 int k;


 if (start)
  lcdc_write(priv, _LDCNT2R, tmp | START_LCDC);
 else
  lcdc_write(priv, _LDCNT2R, tmp & ~START_LCDC);


 for (k = 0; k < ARRAY_SIZE(priv->ch); k++)
  if (lcdc_read(priv, _LDCNT2R) & priv->ch[k].enabled)
   while (1) {
    tmp = lcdc_read_chan(&priv->ch[k], LDPMR) & 3;
    if (start && tmp == 3)
     break;
    if (!start && tmp == 0)
     break;
    cpu_relax();
   }

 if (!start)
  lcdc_write(priv, _LDDCKSTPR, 1);
}
