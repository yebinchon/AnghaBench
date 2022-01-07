
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {struct ssp_device* ssp; } ;
struct ssp_priv {int sysclk; TYPE_2__ dev; } ;
struct ssp_device {int clk; TYPE_1__* pdev; } ;
struct snd_soc_dai {int id; struct ssp_priv* private_data; } ;
struct TYPE_3__ {int dev; } ;


 int ENODEV ;





 int SSCR0 ;
 int SSCR0_ACS ;
 int SSCR0_ECS ;
 int SSCR0_MOD ;
 int SSCR0_NCS ;
 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int cpu_is_pxa25x () ;
 int cpu_is_pxa3xx () ;
 int dev_dbg (int *,char*,int ,int,unsigned int) ;
 int ssp_read_reg (struct ssp_device*,int ) ;
 int ssp_set_scr (struct ssp_device*,int) ;
 int ssp_write_reg (struct ssp_device*,int ,int) ;

__attribute__((used)) static int pxa_ssp_set_dai_sysclk(struct snd_soc_dai *cpu_dai,
 int clk_id, unsigned int freq, int dir)
{
 struct ssp_priv *priv = cpu_dai->private_data;
 struct ssp_device *ssp = priv->dev.ssp;
 int val;

 u32 sscr0 = ssp_read_reg(ssp, SSCR0) &
  ~(SSCR0_ECS | SSCR0_NCS | SSCR0_MOD | SSCR0_ACS);

 dev_dbg(&ssp->pdev->dev,
  "pxa_ssp_set_dai_sysclk id: %d, clk_id %d, freq %u\n",
  cpu_dai->id, clk_id, freq);

 switch (clk_id) {
 case 129:
  sscr0 |= SSCR0_MOD;
  break;
 case 128:

  if (cpu_is_pxa25x())
   priv->sysclk = 1843200;
  else
   priv->sysclk = 13000000;
  break;
 case 131:
  priv->sysclk = freq;
  sscr0 |= SSCR0_ECS;
  break;
 case 130:
  priv->sysclk = freq;
  sscr0 |= SSCR0_NCS | SSCR0_MOD;
  break;
 case 132:
  priv->sysclk = 0;
  ssp_set_scr(ssp, 1);
  sscr0 |= SSCR0_ACS;
  break;
 default:
  return -ENODEV;
 }



 if (!cpu_is_pxa3xx())
  clk_disable(priv->dev.ssp->clk);
 val = ssp_read_reg(ssp, SSCR0) | sscr0;
 ssp_write_reg(ssp, SSCR0, val);
 if (!cpu_is_pxa3xx())
  clk_enable(priv->dev.ssp->clk);

 return 0;
}
