
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xhci_hcd {int dummy; } ;
struct xhci_command {scalar_t__ completion; int cmd_list; int status; } ;


 int complete (scalar_t__) ;
 int list_del (int *) ;
 int xhci_free_command (struct xhci_hcd*,struct xhci_command*) ;

__attribute__((used)) static void xhci_complete_cmd_in_cmd_wait_list(struct xhci_hcd *xhci,
  struct xhci_command *command, u32 status)
{
 command->status = status;
 list_del(&command->cmd_list);
 if (command->completion)
  complete(command->completion);
 else
  xhci_free_command(xhci, command);
}
