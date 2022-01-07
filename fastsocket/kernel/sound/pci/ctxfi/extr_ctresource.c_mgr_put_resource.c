
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsc_mgr {unsigned int avail; int rscs; } ;


 int put_resource (int ,unsigned int,unsigned int) ;

int mgr_put_resource(struct rsc_mgr *mgr, unsigned int n, unsigned int idx)
{
 put_resource(mgr->rscs, n, idx);
 mgr->avail += n;

 return 0;
}
