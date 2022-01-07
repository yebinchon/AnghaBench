
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fn_node {struct fn_node* next; int (* fn ) () ;} ;
struct TYPE_2__ {struct fn_node* head; } ;


 TYPE_1__ flush_fn_list ;
 int stub1 () ;

void __gcov_flush() {
  struct fn_node* curr = flush_fn_list.head;

  while (curr) {
    curr->fn();
    curr = curr->next;
  }
}
