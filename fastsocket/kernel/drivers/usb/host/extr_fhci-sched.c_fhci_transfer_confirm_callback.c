
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fhci_hcd {TYPE_1__* process_done_task; } ;
struct TYPE_2__ {int state; } ;


 int tasklet_schedule (TYPE_1__*) ;

u32 fhci_transfer_confirm_callback(struct fhci_hcd *fhci)
{
 if (!fhci->process_done_task->state)
  tasklet_schedule(fhci->process_done_task);
 return 0;
}
