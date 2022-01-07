
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct publication {scalar_t__ scope; int pport_list; } ;
struct TYPE_2__ {int local_publ_count; } ;


 scalar_t__ TIPC_NODE_SCOPE ;
 int dbg (char*,int ,int ,int ) ;
 int err (char*,int ,int ,int ,int ) ;
 int kfree (struct publication*) ;
 scalar_t__ likely (struct publication*) ;
 int list_del_init (int *) ;
 TYPE_1__ table ;
 int tipc_named_withdraw (struct publication*) ;
 int tipc_nametbl_lock ;
 struct publication* tipc_nametbl_remove_publ (int ,int ,int ,int ,int ) ;
 int tipc_own_addr ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

int tipc_nametbl_withdraw(u32 type, u32 lower, u32 ref, u32 key)
{
 struct publication *publ;

 dbg("tipc_nametbl_withdraw: {%u,%u}, key=%u\n", type, lower, key);
 write_lock_bh(&tipc_nametbl_lock);
 publ = tipc_nametbl_remove_publ(type, lower, tipc_own_addr, ref, key);
 if (likely(publ)) {
  table.local_publ_count--;
  if (publ->scope != TIPC_NODE_SCOPE)
   tipc_named_withdraw(publ);
  write_unlock_bh(&tipc_nametbl_lock);
  list_del_init(&publ->pport_list);
  kfree(publ);
  return 1;
 }
 write_unlock_bh(&tipc_nametbl_lock);
 err("Unable to remove local publication\n"
     "(type=%u, lower=%u, ref=%u, key=%u)\n",
     type, lower, ref, key);
 return 0;
}
