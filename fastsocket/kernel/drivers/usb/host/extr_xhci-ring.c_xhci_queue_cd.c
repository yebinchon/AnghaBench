
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union xhci_trb {int dummy; } xhci_trb ;
struct xhci_hcd {int cancel_cmd_list; } ;
struct xhci_command {int dummy; } ;
struct xhci_cd {int cancel_cmd_list; union xhci_trb* cmd_trb; struct xhci_command* command; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_LIST_HEAD (int *) ;
 struct xhci_cd* kzalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int xhci_queue_cd(struct xhci_hcd *xhci,
  struct xhci_command *command,
  union xhci_trb *cmd_trb)
{
 struct xhci_cd *cd;
 cd = kzalloc(sizeof(struct xhci_cd), GFP_ATOMIC);
 if (!cd)
  return -ENOMEM;
 INIT_LIST_HEAD(&cd->cancel_cmd_list);

 cd->command = command;
 cd->cmd_trb = cmd_trb;
 list_add_tail(&cd->cancel_cmd_list, &xhci->cancel_cmd_list);

 return 0;
}
