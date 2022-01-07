
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_dst {int dummy; } ;
struct dst_entry {int dummy; } ;


 int AF_UNSPEC ;
 int xfrm_bundle_ok (int *,struct xfrm_dst*,int *,int ,int ) ;

__attribute__((used)) static int stale_bundle(struct dst_entry *dst)
{
 return !xfrm_bundle_ok(((void*)0), (struct xfrm_dst *)dst, ((void*)0), AF_UNSPEC, 0);
}
