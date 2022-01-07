
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pred_data {struct pred_data* next; int name; } ;


 int INSERT ;
 int error (char*,int ) ;
 void** htab_find_slot (int ,struct pred_data*,int ) ;
 struct pred_data** last_predicate ;
 int predicate_table ;

void
add_predicate (struct pred_data *pred)
{
  void **slot = htab_find_slot (predicate_table, pred, INSERT);
  if (*slot)
    {
      error ("duplicate predicate definition for '%s'", pred->name);
      return;
    }
  *slot = pred;
  *last_predicate = pred;
  last_predicate = &pred->next;
}
