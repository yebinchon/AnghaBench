
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct TYPE_2__ {int * types; } ;


 int err (char*,size_t) ;
 int hlist_empty (int *) ;
 int kfree (int *) ;
 TYPE_1__ table ;
 int tipc_nametbl_lock ;
 size_t tipc_nametbl_size ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tipc_nametbl_stop(void)
{
 u32 i;

 if (!table.types)
  return;



 write_lock_bh(&tipc_nametbl_lock);
 for (i = 0; i < tipc_nametbl_size; i++) {
  if (!hlist_empty(&table.types[i]))
   err("tipc_nametbl_stop(): hash chain %u is non-null\n", i);
 }
 kfree(table.types);
 table.types = ((void*)0);
 write_unlock_bh(&tipc_nametbl_lock);
}
