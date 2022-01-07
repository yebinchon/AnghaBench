
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u32 ;
struct reference {size_t ref; int * object; } ;
struct TYPE_2__ {size_t index_mask; size_t first_free; size_t last_free; struct reference* entries; } ;


 int err (char*) ;
 int ref_table_lock ;
 TYPE_1__ tipc_ref_table ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

void tipc_ref_discard(u32 ref)
{
 struct reference *entry;
 u32 index;
 u32 index_mask;

 if (!tipc_ref_table.entries) {
  err("Reference table not found during discard attempt\n");
  return;
 }

 index_mask = tipc_ref_table.index_mask;
 index = ref & index_mask;
 entry = &(tipc_ref_table.entries[index]);

 write_lock_bh(&ref_table_lock);

 if (!entry->object) {
  err("Attempt to discard reference to non-existent object\n");
  goto exit;
 }
 if (entry->ref != ref) {
  err("Attempt to discard non-existent reference\n");
  goto exit;
 }






 entry->object = ((void*)0);
 entry->ref = (ref & ~index_mask) + (index_mask + 1);



 if (tipc_ref_table.first_free == 0)
  tipc_ref_table.first_free = index;
 else
  tipc_ref_table.entries[tipc_ref_table.last_free].ref |= index;
 tipc_ref_table.last_free = index;

exit:
 write_unlock_bh(&ref_table_lock);
}
