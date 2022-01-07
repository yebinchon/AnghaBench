
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcf_proto {int dummy; } ;
struct tc_u_knode {struct tc_u_knode* next; int handle; struct tc_u_hnode* ht_up; } ;
struct tc_u_hnode {struct tc_u_knode** ht; } ;


 size_t TC_U32_HASH (int ) ;
 int WARN_ON (int) ;
 int tcf_tree_lock (struct tcf_proto*) ;
 int tcf_tree_unlock (struct tcf_proto*) ;
 int u32_destroy_key (struct tcf_proto*,struct tc_u_knode*) ;

__attribute__((used)) static int u32_delete_key(struct tcf_proto *tp, struct tc_u_knode* key)
{
 struct tc_u_knode **kp;
 struct tc_u_hnode *ht = key->ht_up;

 if (ht) {
  for (kp = &ht->ht[TC_U32_HASH(key->handle)]; *kp; kp = &(*kp)->next) {
   if (*kp == key) {
    tcf_tree_lock(tp);
    *kp = key->next;
    tcf_tree_unlock(tp);

    u32_destroy_key(tp, key);
    return 0;
   }
  }
 }
 WARN_ON(1);
 return 0;
}
