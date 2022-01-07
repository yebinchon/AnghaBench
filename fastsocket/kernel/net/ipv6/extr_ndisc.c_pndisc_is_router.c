
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pneigh_entry {int flags; } ;
struct net_device {int dummy; } ;
struct TYPE_3__ {int lock; } ;


 int NTF_ROUTER ;
 struct pneigh_entry* __pneigh_lookup (TYPE_1__*,int ,void const*,struct net_device*) ;
 int dev_net (struct net_device*) ;
 TYPE_1__ nd_tbl ;
 int read_lock_bh (int *) ;
 int read_unlock_bh (int *) ;

__attribute__((used)) static int pndisc_is_router(const void *pkey,
       struct net_device *dev)
{
 struct pneigh_entry *n;
 int ret = -1;

 read_lock_bh(&nd_tbl.lock);
 n = __pneigh_lookup(&nd_tbl, dev_net(dev), pkey, dev);
 if (n)
  ret = !!(n->flags & NTF_ROUTER);
 read_unlock_bh(&nd_tbl.lock);

 return ret;
}
