
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elt_list {int * elt; struct elt_list* next; } ;
typedef int cselib_val ;


 int elt_list_pool ;
 struct elt_list* pool_alloc (int ) ;

__attribute__((used)) static inline struct elt_list *
new_elt_list (struct elt_list *next, cselib_val *elt)
{
  struct elt_list *el;
  el = pool_alloc (elt_list_pool);
  el->next = next;
  el->elt = elt;
  return el;
}
