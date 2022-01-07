
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct xfrm_policy {int xfrm_nr; TYPE_1__* xfrm_vec; } ;
struct TYPE_2__ {scalar_t__ reqid; } ;


 int EEXIST ;

__attribute__((used)) static int check_reqid(struct xfrm_policy *xp, int dir, int count, void *ptr)
{
 int i;
 u32 reqid = *(u32*)ptr;

 for (i=0; i<xp->xfrm_nr; i++) {
  if (xp->xfrm_vec[i].reqid == reqid)
   return -EEXIST;
 }
 return 0;
}
