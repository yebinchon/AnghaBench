
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_head {struct list_head* next; } ;


 int stub1 (void*,struct list_head*,struct list_head*) ;

__attribute__((used)) static struct list_head *merge(void *priv,
    int (*cmp)(void *priv, struct list_head *a,
     struct list_head *b),
    struct list_head *a, struct list_head *b)
{
 struct list_head head, *tail = &head;

 while (a && b) {

  if ((*cmp)(priv, a, b) <= 0) {
   tail->next = a;
   a = a->next;
  } else {
   tail->next = b;
   b = b->next;
  }
  tail = tail->next;
 }
 tail->next = a?:b;
 return head.next;
}
