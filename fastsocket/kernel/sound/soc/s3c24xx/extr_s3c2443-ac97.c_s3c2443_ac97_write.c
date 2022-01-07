
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct snd_ac97 {int dummy; } ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int AC_CMD_ADDR (unsigned short) ;
 int AC_CMD_DATA (unsigned short) ;
 scalar_t__ S3C_AC97_CODEC_CMD ;
 int S3C_AC97_CODEC_CMD_READ ;
 scalar_t__ S3C_AC97_GLBCTRL ;
 int S3C_AC97_GLBCTRL_CODECREADYIE ;
 int S3C_AC97_GLBSTAT_CODECREADY ;
 int ac97_completion ;
 int ac97_mutex ;
 int codec_ready ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int readl (scalar_t__) ;
 TYPE_1__ s3c24xx_ac97 ;
 int udelay (int) ;
 int wait_for_completion (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static void s3c2443_ac97_write(struct snd_ac97 *ac97, unsigned short reg,
 unsigned short val)
{
 u32 ac_glbctrl;
 u32 ac_codec_cmd;

 mutex_lock(&ac97_mutex);

 codec_ready = S3C_AC97_GLBSTAT_CODECREADY;
 ac_codec_cmd = readl(s3c24xx_ac97.regs + S3C_AC97_CODEC_CMD);
 ac_codec_cmd = AC_CMD_ADDR(reg) | AC_CMD_DATA(val);
 writel(ac_codec_cmd, s3c24xx_ac97.regs + S3C_AC97_CODEC_CMD);

 udelay(50);

 ac_glbctrl = readl(s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
 ac_glbctrl |= S3C_AC97_GLBCTRL_CODECREADYIE;
 writel(ac_glbctrl, s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);

 wait_for_completion(&ac97_completion);

 ac_codec_cmd = readl(s3c24xx_ac97.regs + S3C_AC97_CODEC_CMD);
 ac_codec_cmd |= S3C_AC97_CODEC_CMD_READ;
 writel(ac_codec_cmd, s3c24xx_ac97.regs + S3C_AC97_CODEC_CMD);

 mutex_unlock(&ac97_mutex);

}
