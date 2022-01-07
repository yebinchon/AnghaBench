
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xfrm_address_t ;
struct net {int dummy; } ;
struct flowi {int fl6_src; int fl6_dst; } ;
struct dst_entry {int error; } ;


 struct dst_entry* ERR_PTR (int) ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* ip6_route_output (struct net*,int *,struct flowi*) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static struct dst_entry *xfrm6_dst_lookup(struct net *net, int tos,
       xfrm_address_t *saddr,
       xfrm_address_t *daddr)
{
 struct flowi fl = {};
 struct dst_entry *dst;
 int err;

 memcpy(&fl.fl6_dst, daddr, sizeof(fl.fl6_dst));
 if (saddr)
  memcpy(&fl.fl6_src, saddr, sizeof(fl.fl6_src));

 dst = ip6_route_output(net, ((void*)0), &fl);

 err = dst->error;
 if (dst->error) {
  dst_release(dst);
  dst = ERR_PTR(err);
 }

 return dst;
}
