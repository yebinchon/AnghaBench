
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct publication {int key; int ref; int node; int lower; int type; int upper; } ;


 int dbg (char*,int ,int ,int ) ;
 int err (char*,int ,int ,int ,int ,int) ;
 int kfree (struct publication*) ;
 int tipc_nametbl_lock ;
 struct publication* tipc_nametbl_remove_publ (int ,int ,int ,int ,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static void node_is_down(struct publication *publ)
{
 struct publication *p;

 write_lock_bh(&tipc_nametbl_lock);
 dbg("node_is_down: withdrawing %u, %u, %u\n",
     publ->type, publ->lower, publ->upper);
 publ->key += 1222345;
 p = tipc_nametbl_remove_publ(publ->type, publ->lower,
         publ->node, publ->ref, publ->key);
 write_unlock_bh(&tipc_nametbl_lock);

 if (p != publ) {
  err("Unable to remove publication from failed node\n"
      "(type=%u, lower=%u, node=0x%x, ref=%u, key=%u)\n",
      publ->type, publ->lower, publ->node, publ->ref, publ->key);
 }

 if (p) {
  kfree(p);
 }
}
