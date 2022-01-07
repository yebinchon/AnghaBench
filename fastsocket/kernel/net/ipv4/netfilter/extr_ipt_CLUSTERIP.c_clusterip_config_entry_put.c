
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct clusterip_config {TYPE_1__* pde; int dev; int clustermac; int list; int entries; } ;
struct TYPE_2__ {int parent; int name; } ;


 int ETH_ALEN ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int clusterip_lock ;
 int dev_mc_delete (int ,int ,int ,int ) ;
 int dev_put (int ) ;
 int list_del (int *) ;
 int remove_proc_entry (int ,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void
clusterip_config_entry_put(struct clusterip_config *c)
{
 write_lock_bh(&clusterip_lock);
 if (atomic_dec_and_test(&c->entries)) {
  list_del(&c->list);
  write_unlock_bh(&clusterip_lock);

  dev_mc_delete(c->dev, c->clustermac, ETH_ALEN, 0);
  dev_put(c->dev);







  return;
 }
 write_unlock_bh(&clusterip_lock);
}
