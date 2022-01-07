
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* prev; struct list_head* next; } ;


 int stub1 (void*,struct list_head*,struct list_head*) ;
 int stub2 (void*,struct list_head*,struct list_head*) ;

__attribute__((used)) static void merge_and_restore_back_links(void *priv,
    int (*cmp)(void *priv, struct list_head *a,
     struct list_head *b),
    struct list_head *head,
    struct list_head *a, struct list_head *b)
{
 struct list_head *tail = head;

 while (a && b) {

  if ((*cmp)(priv, a, b) <= 0) {
   tail->next = a;
   a->prev = tail;
   a = a->next;
  } else {
   tail->next = b;
   b->prev = tail;
   b = b->next;
  }
  tail = tail->next;
 }
 tail->next = a ? : b;

 do {






  (*cmp)(priv, tail, tail);

  tail->next->prev = tail;
  tail = tail->next;
 } while (tail->next);

 tail->next = head;
 head->prev = tail;
}
