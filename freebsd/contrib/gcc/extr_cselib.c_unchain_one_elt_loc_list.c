
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elt_loc_list {struct elt_loc_list* next; } ;


 int elt_loc_list_pool ;
 int pool_free (int ,struct elt_loc_list*) ;

__attribute__((used)) static void
unchain_one_elt_loc_list (struct elt_loc_list **pl)
{
  struct elt_loc_list *l = *pl;

  *pl = l->next;
  pool_free (elt_loc_list_pool, l);
}
