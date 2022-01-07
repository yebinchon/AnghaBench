
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct list_head {int dummy; } ;
struct audit_context {struct list_head killed_trees; int in_syscall; } ;
struct TYPE_2__ {struct audit_context* audit_context; } ;


 TYPE_1__* current ;
 scalar_t__ likely (int) ;

struct list_head *audit_killed_trees(void)
{
 struct audit_context *ctx = current->audit_context;
 if (likely(!ctx || !ctx->in_syscall))
  return ((void*)0);
 return &ctx->killed_trees;
}
