
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct xhci_command {struct xhci_command* completion; int in_ctx; } ;


 int kfree (struct xhci_command*) ;
 int xhci_free_container_ctx (struct xhci_hcd*,int ) ;

void xhci_free_command(struct xhci_hcd *xhci,
  struct xhci_command *command)
{
 xhci_free_container_ctx(xhci,
   command->in_ctx);
 kfree(command->completion);
 kfree(command);
}
