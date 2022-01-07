
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dlm_ctxt {int spinlock; int domain_map; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int test_bit (int ,int ) ;

int dlm_is_node_dead(struct dlm_ctxt *dlm, u8 node)
{
 int dead;
 spin_lock(&dlm->spinlock);
 dead = !test_bit(node, dlm->domain_map);
 spin_unlock(&dlm->spinlock);
 return dead;
}
