
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct publication {int dummy; } ;
struct TYPE_2__ {scalar_t__ local_publ_count; } ;


 scalar_t__ TIPC_NODE_SCOPE ;
 scalar_t__ TIPC_RESERVED_TYPES ;
 int atomic_read (int *) ;
 int rsv_publ_ok ;
 TYPE_1__ table ;
 scalar_t__ tipc_max_publications ;
 int tipc_named_publish (struct publication*) ;
 struct publication* tipc_nametbl_insert_publ (scalar_t__,scalar_t__,scalar_t__,scalar_t__,int ,scalar_t__,scalar_t__) ;
 int tipc_nametbl_lock ;
 int tipc_own_addr ;
 int warn (char*,scalar_t__,...) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

struct publication *tipc_nametbl_publish(u32 type, u32 lower, u32 upper,
        u32 scope, u32 port_ref, u32 key)
{
 struct publication *publ;

 if (table.local_publ_count >= tipc_max_publications) {
  warn("Publication failed, local publication limit reached (%u)\n",
       tipc_max_publications);
  return ((void*)0);
 }
 if ((type < TIPC_RESERVED_TYPES) && !atomic_read(&rsv_publ_ok)) {
  warn("Publication failed, reserved name {%u,%u,%u}\n",
       type, lower, upper);
  return ((void*)0);
 }

 write_lock_bh(&tipc_nametbl_lock);
 table.local_publ_count++;
 publ = tipc_nametbl_insert_publ(type, lower, upper, scope,
       tipc_own_addr, port_ref, key);
 if (publ && (scope != TIPC_NODE_SCOPE)) {
  tipc_named_publish(publ);
 }
 write_unlock_bh(&tipc_nametbl_lock);
 return publ;
}
