
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next_containing_mem; scalar_t__ locs; } ;
typedef TYPE_1__ cselib_val ;


 int cselib_hash_table ;
 int discard_useless_locs ;
 int discard_useless_values ;
 TYPE_1__ dummy_val ;
 TYPE_1__* first_containing_mem ;
 int gcc_assert (int) ;
 int htab_traverse (int ,int ,int ) ;
 int n_useless_values ;
 scalar_t__ values_became_useless ;

__attribute__((used)) static void
remove_useless_values (void)
{
  cselib_val **p, *v;


  do
    {
      values_became_useless = 0;
      htab_traverse (cselib_hash_table, discard_useless_locs, 0);
    }
  while (values_became_useless);



  p = &first_containing_mem;
  for (v = *p; v != &dummy_val; v = v->next_containing_mem)
    if (v->locs)
      {
 *p = v;
 p = &(*p)->next_containing_mem;
      }
  *p = &dummy_val;

  htab_traverse (cselib_hash_table, discard_useless_values, 0);

  gcc_assert (!n_useless_values);
}
