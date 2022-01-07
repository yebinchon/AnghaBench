
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int inflight_locks; int refmap; int spinlock; } ;


 int O2NM_MAX_NODES ;
 int assert_spin_locked (int *) ;
 int find_next_bit (int ,int,int) ;
 int printk (char*,...) ;

__attribute__((used)) static void dlm_print_lockres_refmap(struct dlm_lock_resource *res)
{
 int bit;
 assert_spin_locked(&res->spinlock);

 printk("  refmap nodes: [ ");
 bit = 0;
 while (1) {
  bit = find_next_bit(res->refmap, O2NM_MAX_NODES, bit);
  if (bit >= O2NM_MAX_NODES)
   break;
  printk("%u ", bit);
  bit++;
 }
 printk("], inflight=%u\n", res->inflight_locks);
}
