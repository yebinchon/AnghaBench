
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {scalar_t__ more_cleanups_ok; int statement_list; } ;


 scalar_t__ TYPE_HAS_NONTRIVIAL_DESTRUCTOR (scalar_t__) ;
 int begin_scope (int ,int *) ;
 TYPE_1__* current_binding_level ;
 scalar_t__ error_mark_node ;
 int push_stmt_list () ;
 int sk_cleanup ;

void
maybe_push_cleanup_level (tree type)
{
  if (type != error_mark_node
      && TYPE_HAS_NONTRIVIAL_DESTRUCTOR (type)
      && current_binding_level->more_cleanups_ok == 0)
    {
      begin_scope (sk_cleanup, ((void*)0));
      current_binding_level->statement_list = push_stmt_list ();
    }
}
