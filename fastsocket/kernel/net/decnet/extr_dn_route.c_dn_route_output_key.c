
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowi {scalar_t__ proto; } ;
struct dst_entry {int dummy; } ;


 int __dn_route_output_key (struct dst_entry**,struct flowi*,int) ;
 int init_net ;
 int xfrm_lookup (int *,struct dst_entry**,struct flowi*,int *,int ) ;

__attribute__((used)) static int dn_route_output_key(struct dst_entry **pprt, struct flowi *flp, int flags)
{
 int err;

 err = __dn_route_output_key(pprt, flp, flags);
 if (err == 0 && flp->proto) {
  err = xfrm_lookup(&init_net, pprt, flp, ((void*)0), 0);
 }
 return err;
}
