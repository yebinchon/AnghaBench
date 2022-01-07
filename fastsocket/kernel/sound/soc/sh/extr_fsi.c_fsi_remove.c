
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct TYPE_4__ {int base; int irq; int clk; } ;


 int ARRAY_SIZE (int ) ;
 int clk_put (int ) ;
 int free_irq (int ,TYPE_1__*) ;
 int fsi_free_dma_chan () ;
 int fsi_soc_dai ;
 int fsi_soc_platform ;
 int iounmap (int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* master ;
 int snd_soc_unregister_dais (int ,int ) ;
 int snd_soc_unregister_platform (int *) ;

__attribute__((used)) static int fsi_remove(struct platform_device *pdev)
{
 snd_soc_unregister_dais(fsi_soc_dai, ARRAY_SIZE(fsi_soc_dai));
 snd_soc_unregister_platform(&fsi_soc_platform);

 clk_put(master->clk);

 fsi_free_dma_chan();

 free_irq(master->irq, master);

 iounmap(master->base);
 kfree(master);
 master = ((void*)0);
 return 0;
}
