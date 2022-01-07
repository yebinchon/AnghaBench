
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_node {scalar_t__ id; struct fn_node* next; } ;
struct fn_list {struct fn_node* tail; struct fn_node* head; } ;


 scalar_t__ CURRENT_ID ;
 int free (struct fn_node*) ;

__attribute__((used)) static void fn_list_remove(struct fn_list* list) {
  struct fn_node* curr = list->head;
  struct fn_node* prev = ((void*)0);
  struct fn_node* next = ((void*)0);

  while (curr) {
    next = curr->next;

    if (curr->id == CURRENT_ID) {
      if (curr == list->head) {
        list->head = next;
      }

      if (curr == list->tail) {
        list->tail = prev;
      }

      if (prev) {
        prev->next = next;
      }

      free(curr);
    } else {
      prev = curr;
    }

    curr = next;
  }
}
