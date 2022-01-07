
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct td {int dummy; } ;
struct ohci_hcd {void* td_cache; void* ed_cache; } ;
struct ed {int dummy; } ;
struct TYPE_3__ {int controller; } ;
struct TYPE_4__ {TYPE_1__ self; } ;


 int ENOMEM ;
 void* dma_pool_create (char*,int ,int,int,int ) ;
 int dma_pool_destroy (void*) ;
 TYPE_2__* ohci_to_hcd (struct ohci_hcd*) ;

__attribute__((used)) static int ohci_mem_init (struct ohci_hcd *ohci)
{
 ohci->td_cache = dma_pool_create ("ohci_td",
  ohci_to_hcd(ohci)->self.controller,
  sizeof (struct td),
  32 ,
  0 );
 if (!ohci->td_cache)
  return -ENOMEM;
 ohci->ed_cache = dma_pool_create ("ohci_ed",
  ohci_to_hcd(ohci)->self.controller,
  sizeof (struct ed),
  16 ,
  0 );
 if (!ohci->ed_cache) {
  dma_pool_destroy (ohci->td_cache);
  return -ENOMEM;
 }
 return 0;
}
