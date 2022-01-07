
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct netlbl_unlhsh_iface {int addr4_list; } ;
struct TYPE_2__ {int addr; int mask; int valid; } ;
struct netlbl_unlhsh_addr4 {TYPE_1__ list; int secid; int rcu; } ;
struct in_addr {int s_addr; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int INIT_RCU_HEAD (int *) ;
 int kfree (struct netlbl_unlhsh_addr4*) ;
 struct netlbl_unlhsh_addr4* kzalloc (int,int ) ;
 int netlbl_af4list_add (TYPE_1__*,int *) ;
 int netlbl_unlhsh_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int netlbl_unlhsh_add_addr4(struct netlbl_unlhsh_iface *iface,
       const struct in_addr *addr,
       const struct in_addr *mask,
       u32 secid)
{
 int ret_val;
 struct netlbl_unlhsh_addr4 *entry;

 entry = kzalloc(sizeof(*entry), GFP_ATOMIC);
 if (entry == ((void*)0))
  return -ENOMEM;

 entry->list.addr = addr->s_addr & mask->s_addr;
 entry->list.mask = mask->s_addr;
 entry->list.valid = 1;
 INIT_RCU_HEAD(&entry->rcu);
 entry->secid = secid;

 spin_lock(&netlbl_unlhsh_lock);
 ret_val = netlbl_af4list_add(&entry->list, &iface->addr4_list);
 spin_unlock(&netlbl_unlhsh_lock);

 if (ret_val != 0)
  kfree(entry);
 return ret_val;
}
