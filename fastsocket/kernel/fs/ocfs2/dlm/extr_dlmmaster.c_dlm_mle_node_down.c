
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct o2nm_node {int dummy; } ;
struct dlm_master_list_entry {int spinlock; int node_map; } ;
struct dlm_ctxt {int dummy; } ;


 int clear_bit (int,int ) ;
 int mlog (int ,char*,int) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int,int ) ;

__attribute__((used)) static void dlm_mle_node_down(struct dlm_ctxt *dlm,
         struct dlm_master_list_entry *mle,
         struct o2nm_node *node, int idx)
{
 spin_lock(&mle->spinlock);

 if (!test_bit(idx, mle->node_map))
  mlog(0, "node %u already removed from nodemap!\n", idx);
 else
  clear_bit(idx, mle->node_map);

 spin_unlock(&mle->spinlock);
}
