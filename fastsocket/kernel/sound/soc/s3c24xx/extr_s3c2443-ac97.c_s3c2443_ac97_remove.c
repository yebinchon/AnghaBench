
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct platform_device {int dummy; } ;
struct TYPE_2__ {int regs; int ac97_clk; } ;


 int IRQ_S3C244x_AC97 ;
 int clk_disable (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,int *) ;
 int iounmap (int ) ;
 TYPE_1__ s3c24xx_ac97 ;

__attribute__((used)) static void s3c2443_ac97_remove(struct platform_device *pdev,
    struct snd_soc_dai *dai)
{
 free_irq(IRQ_S3C244x_AC97, ((void*)0));
 clk_disable(s3c24xx_ac97.ac97_clk);
 clk_put(s3c24xx_ac97.ac97_clk);
 iounmap(s3c24xx_ac97.regs);
}
