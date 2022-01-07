
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fn_node {struct fn_node* next; int id; int fn; } ;
struct fn_list {struct fn_node* tail; struct fn_node* head; } ;
typedef int fn_ptr ;


 int CURRENT_ID ;
 struct fn_node* malloc (int) ;

__attribute__((used)) static void fn_list_insert(struct fn_list* list, fn_ptr fn) {
  struct fn_node* new_node = malloc(sizeof(struct fn_node));
  new_node->fn = fn;
  new_node->next = ((void*)0);
  new_node->id = CURRENT_ID;

  if (!list->head) {
    list->head = list->tail = new_node;
  } else {
    list->tail->next = new_node;
    list->tail = new_node;
  }
}
