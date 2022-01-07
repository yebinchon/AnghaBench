
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_bridge {int multicast_disabled; int multicast_lock; int hash_elasticity; TYPE_1__* mdb; int dev; } ;
struct TYPE_2__ {int max; scalar_t__ old; } ;


 int EEXIST ;
 int br_mdb_rehash (TYPE_1__**,int ,int ) ;
 int br_multicast_start_querier (struct net_bridge*) ;
 int netif_running (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int br_multicast_toggle(struct net_bridge *br, unsigned long val)
{
 int err = 0;

 spin_lock(&br->multicast_lock);
 if (!netif_running(br->dev))
  goto unlock;

 if (br->multicast_disabled == !val)
  goto unlock;

 br->multicast_disabled = !val;
 if (br->multicast_disabled)
  goto unlock;

 if (br->mdb) {
  if (br->mdb->old) {
   err = -EEXIST;
rollback:
   br->multicast_disabled = !!val;
   goto unlock;
  }

  err = br_mdb_rehash(&br->mdb, br->mdb->max,
        br->hash_elasticity);
  if (err)
   goto rollback;
 }

 br_multicast_start_querier(br);

unlock:
 spin_unlock(&br->multicast_lock);

 return err;
}
