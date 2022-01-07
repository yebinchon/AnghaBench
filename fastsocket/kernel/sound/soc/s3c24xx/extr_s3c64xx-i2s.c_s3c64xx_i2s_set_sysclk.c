
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct snd_soc_dai {int dummy; } ;
struct s3c_i2sv2_info {scalar_t__ regs; } ;


 int EINVAL ;
 scalar_t__ S3C2412_IISMOD ;


 int S3C64XX_IISMOD_IMS_SYSMUX ;
 int readl (scalar_t__) ;
 struct s3c_i2sv2_info* to_info (struct snd_soc_dai*) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int s3c64xx_i2s_set_sysclk(struct snd_soc_dai *cpu_dai,
      int clk_id, unsigned int freq, int dir)
{
 struct s3c_i2sv2_info *i2s = to_info(cpu_dai);
 u32 iismod = readl(i2s->regs + S3C2412_IISMOD);

 switch (clk_id) {
 case 128:
  iismod &= ~S3C64XX_IISMOD_IMS_SYSMUX;
  break;

 case 129:
  iismod |= S3C64XX_IISMOD_IMS_SYSMUX;
  break;

 default:
  return -EINVAL;
 }

 writel(iismod, i2s->regs + S3C2412_IISMOD);

 return 0;
}
