
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct TYPE_3__ {struct ssp_device* ssp; } ;
struct ssp_priv {TYPE_1__ dev; } ;
struct ssp_device {TYPE_2__* pdev; } ;
struct snd_soc_dai {struct ssp_priv* private_data; } ;
struct TYPE_4__ {int dev; } ;


 int EINVAL ;
 int SSACD ;
 int SSACDD ;
 scalar_t__ cpu_is_pxa3xx () ;
 int dev_dbg (int *,char*,int,unsigned int) ;
 int do_div (int,unsigned int) ;
 int ssp_read_reg (struct ssp_device*,int ) ;
 int ssp_write_reg (struct ssp_device*,int ,int) ;

__attribute__((used)) static int pxa_ssp_set_dai_pll(struct snd_soc_dai *cpu_dai,
 int pll_id, unsigned int freq_in, unsigned int freq_out)
{
 struct ssp_priv *priv = cpu_dai->private_data;
 struct ssp_device *ssp = priv->dev.ssp;
 u32 ssacd = ssp_read_reg(ssp, SSACD) & ~0x70;






 switch (freq_out) {
 case 5622000:
  break;
 case 11345000:
  ssacd |= (0x1 << 4);
  break;
 case 12235000:
  ssacd |= (0x2 << 4);
  break;
 case 14857000:
  ssacd |= (0x3 << 4);
  break;
 case 32842000:
  ssacd |= (0x4 << 4);
  break;
 case 48000000:
  ssacd |= (0x5 << 4);
  break;
 case 0:

  break;

 default:
  return -EINVAL;
 }

 ssp_write_reg(ssp, SSACD, ssacd);

 return 0;
}
