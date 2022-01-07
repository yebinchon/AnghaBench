
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc_mgr {unsigned int avail; int amount; int rscs; } ;


 int ENOENT ;
 int get_resource (int ,int ,unsigned int,unsigned int*) ;

int mgr_get_resource(struct rsc_mgr *mgr, unsigned int n, unsigned int *ridx)
{
 int err;

 if (n > mgr->avail)
  return -ENOENT;

 err = get_resource(mgr->rscs, mgr->amount, n, ridx);
 if (!err)
  mgr->avail -= n;

 return err;
}
