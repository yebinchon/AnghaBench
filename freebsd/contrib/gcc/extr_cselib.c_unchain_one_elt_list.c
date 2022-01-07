
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elt_list {struct elt_list* next; } ;


 int elt_list_pool ;
 int pool_free (int ,struct elt_list*) ;

__attribute__((used)) static inline void
unchain_one_elt_list (struct elt_list **pl)
{
  struct elt_list *l = *pl;

  *pl = l->next;
  pool_free (elt_list_pool, l);
}
