
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int irqreturn_t ;
struct TYPE_2__ {scalar_t__ regs; } ;


 int IRQ_HANDLED ;
 scalar_t__ S3C_AC97_GLBCTRL ;
 int S3C_AC97_GLBCTRL_CODECREADYIE ;
 scalar_t__ S3C_AC97_GLBSTAT ;
 int ac97_completion ;
 int codec_ready ;
 int complete (int *) ;
 int readl (scalar_t__) ;
 TYPE_1__ s3c24xx_ac97 ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static irqreturn_t s3c2443_ac97_irq(int irq, void *dev_id)
{
 int status;
 u32 ac_glbctrl;

 status = readl(s3c24xx_ac97.regs + S3C_AC97_GLBSTAT) & codec_ready;

 if (status) {
  ac_glbctrl = readl(s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
  ac_glbctrl &= ~S3C_AC97_GLBCTRL_CODECREADYIE;
  writel(ac_glbctrl, s3c24xx_ac97.regs + S3C_AC97_GLBCTRL);
  complete(&ac97_completion);
 }
 return IRQ_HANDLED;
}
