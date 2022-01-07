
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int objs; int ptrs; } ;


 int free (TYPE_1__*) ;
 int free_alloc_pool (int *) ;
 int htab_delete (int ) ;
 TYPE_1__* ref_table ;
 int * ref_table_alloc_pool ;

__attribute__((used)) static void
maybe_free_reference_table (void)
{
  if (ref_table)
    {
      htab_delete (ref_table->ptrs);
      htab_delete (ref_table->objs);
      free (ref_table);
      ref_table = ((void*)0);
    }

  if (ref_table_alloc_pool)
    {
      free_alloc_pool (ref_table_alloc_pool);
      ref_table_alloc_pool = ((void*)0);
    }
}
