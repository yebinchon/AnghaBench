
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {int dummy; } ;


 unsigned int NPROTO ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 scalar_t__ unlikely (int) ;
 struct xfrm_state_afinfo** xfrm_state_afinfo ;
 int xfrm_state_afinfo_lock ;

__attribute__((used)) static struct xfrm_state_afinfo *xfrm_state_get_afinfo(unsigned int family)
{
 struct xfrm_state_afinfo *afinfo;
 if (unlikely(family >= NPROTO))
  return ((void*)0);
 read_lock(&xfrm_state_afinfo_lock);
 afinfo = xfrm_state_afinfo[family];
 if (unlikely(!afinfo))
  read_unlock(&xfrm_state_afinfo_lock);
 return afinfo;
}
