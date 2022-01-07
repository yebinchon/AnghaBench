
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device {int parent; } ;
struct TYPE_3__ {int ep_qh_dma; int ep_qh; int ep_qh_size; int done; } ;


 int complete (int ) ;
 int dma_free_coherent (int ,int ,int ,int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* udc_controller ;

__attribute__((used)) static void fsl_udc_release(struct device *dev)
{
 complete(udc_controller->done);
 dma_free_coherent(dev->parent, udc_controller->ep_qh_size,
   udc_controller->ep_qh, udc_controller->ep_qh_dma);
 kfree(udc_controller);
}
