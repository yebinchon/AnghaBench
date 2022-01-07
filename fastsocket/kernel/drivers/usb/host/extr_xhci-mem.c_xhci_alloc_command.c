
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xhci_hcd {int dummy; } ;
struct xhci_command {int cmd_list; scalar_t__ status; void* completion; int in_ctx; } ;
struct completion {int dummy; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 int XHCI_CTX_TYPE_INPUT ;
 int init_completion (void*) ;
 int kfree (struct xhci_command*) ;
 void* kzalloc (int,int ) ;
 int xhci_alloc_container_ctx (struct xhci_hcd*,int ,int ) ;
 int xhci_free_container_ctx (struct xhci_hcd*,int ) ;

struct xhci_command *xhci_alloc_command(struct xhci_hcd *xhci,
  bool allocate_in_ctx, bool allocate_completion,
  gfp_t mem_flags)
{
 struct xhci_command *command;

 command = kzalloc(sizeof(*command), mem_flags);
 if (!command)
  return ((void*)0);

 if (allocate_in_ctx) {
  command->in_ctx =
   xhci_alloc_container_ctx(xhci, XHCI_CTX_TYPE_INPUT,
     mem_flags);
  if (!command->in_ctx) {
   kfree(command);
   return ((void*)0);
  }
 }

 if (allocate_completion) {
  command->completion =
   kzalloc(sizeof(struct completion), mem_flags);
  if (!command->completion) {
   xhci_free_container_ctx(xhci, command->in_ctx);
   kfree(command);
   return ((void*)0);
  }
  init_completion(command->completion);
 }

 command->status = 0;
 INIT_LIST_HEAD(&command->cmd_list);
 return command;
}
