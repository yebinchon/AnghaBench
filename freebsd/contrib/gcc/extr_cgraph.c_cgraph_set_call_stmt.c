
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct cgraph_edge {int call_stmt; TYPE_1__* caller; } ;
struct TYPE_2__ {scalar_t__ call_site_hash; } ;


 int INSERT ;
 int gcc_assert (int) ;
 void** htab_find_slot_with_hash (scalar_t__,int ,int ,int ) ;
 int htab_hash_pointer (int ) ;
 int htab_remove_elt_with_hash (scalar_t__,int ,int ) ;

void
cgraph_set_call_stmt (struct cgraph_edge *e, tree new_stmt)
{
  if (e->caller->call_site_hash)
    {
      htab_remove_elt_with_hash (e->caller->call_site_hash,
     e->call_stmt,
     htab_hash_pointer (e->call_stmt));
    }
  e->call_stmt = new_stmt;
  if (e->caller->call_site_hash)
    {
      void **slot;
      slot = htab_find_slot_with_hash (e->caller->call_site_hash,
           e->call_stmt,
           htab_hash_pointer
           (e->call_stmt), INSERT);
      gcc_assert (!*slot);
      *slot = e;
    }
}
