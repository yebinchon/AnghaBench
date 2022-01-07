
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct ssp_device* ssp; } ;
struct ssp_priv {TYPE_1__ dev; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {struct ssp_priv* private_data; } ;


 int EINVAL ;
 int ENODEV ;






 int SSACD ;
 int SSACD_ACDS (int) ;
 int SSACD_SCDB ;
 int SSACD_SCDX8 ;
 int cpu_is_pxa3xx () ;
 int ssp_read_reg (struct ssp_device*,int ) ;
 int ssp_set_scr (struct ssp_device*,int) ;
 int ssp_write_reg (struct ssp_device*,int ,int) ;

__attribute__((used)) static int pxa_ssp_set_dai_clkdiv(struct snd_soc_dai *cpu_dai,
 int div_id, int div)
{
 struct ssp_priv *priv = cpu_dai->private_data;
 struct ssp_device *ssp = priv->dev.ssp;
 int val;

 switch (div_id) {
 case 133:
  val = (ssp_read_reg(ssp, SSACD) & ~0x7) | SSACD_ACDS(div);
  ssp_write_reg(ssp, SSACD, val);
  break;
 case 132:
  val = ssp_read_reg(ssp, SSACD);
  val &= ~SSACD_SCDB;




  switch (div) {
  case 131:
   val |= SSACD_SCDB;
   break;
  case 130:
   break;
  default:
   return -EINVAL;
  }
  ssp_write_reg(ssp, SSACD, val);
  break;
 case 128:
  ssp_set_scr(ssp, div);
  break;
 default:
  return -ENODEV;
 }

 return 0;
}
