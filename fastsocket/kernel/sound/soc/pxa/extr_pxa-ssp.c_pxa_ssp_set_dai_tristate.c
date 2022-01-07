
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {struct ssp_device* ssp; } ;
struct ssp_priv {TYPE_1__ dev; } ;
struct ssp_device {int dummy; } ;
struct snd_soc_dai {struct ssp_priv* private_data; } ;


 int SSCR1 ;
 int SSCR1_TTE ;
 int ssp_read_reg (struct ssp_device*,int ) ;
 int ssp_write_reg (struct ssp_device*,int ,int ) ;

__attribute__((used)) static int pxa_ssp_set_dai_tristate(struct snd_soc_dai *cpu_dai,
 int tristate)
{
 struct ssp_priv *priv = cpu_dai->private_data;
 struct ssp_device *ssp = priv->dev.ssp;
 u32 sscr1;

 sscr1 = ssp_read_reg(ssp, SSCR1);
 if (tristate)
  sscr1 &= ~SSCR1_TTE;
 else
  sscr1 |= SSCR1_TTE;
 ssp_write_reg(ssp, SSCR1, sscr1);

 return 0;
}
