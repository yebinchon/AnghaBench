
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


union nf_inet_addr {int ip; } ;
typedef int u_int8_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_4__ {TYPE_3__ dst; } ;
struct rtable {TYPE_1__ u; int rt_gateway; } ;
struct TYPE_5__ {TYPE_3__ dst; } ;
struct rt6_info {TYPE_2__ u; int rt6i_gateway; } ;
struct nf_afinfo {int (* route ) (struct dst_entry**,struct flowi*) ;} ;
struct flowi {int fl6_dst; int fl4_dst; } ;
struct dst_entry {int dummy; } ;
typedef int fl2 ;
typedef int fl1 ;




 int dst_release (TYPE_3__*) ;
 int memcmp (int *,int *,int) ;
 int memcpy (int *,union nf_inet_addr const*,int) ;
 int memset (struct flowi*,int ,int) ;
 struct nf_afinfo* nf_get_afinfo (int) ;
 int stub1 (struct dst_entry**,struct flowi*) ;
 int stub2 (struct dst_entry**,struct flowi*) ;
 int stub3 (struct dst_entry**,struct flowi*) ;
 int stub4 (struct dst_entry**,struct flowi*) ;

__attribute__((used)) static int callforward_do_filter(const union nf_inet_addr *src,
     const union nf_inet_addr *dst,
     u_int8_t family)
{
 const struct nf_afinfo *afinfo;
 struct flowi fl1, fl2;
 int ret = 0;


 afinfo = nf_get_afinfo(family);
 if (!afinfo)
  return 0;

 memset(&fl1, 0, sizeof(fl1));
 memset(&fl2, 0, sizeof(fl2));

 switch (family) {
 case 129: {
  struct rtable *rt1, *rt2;

  fl1.fl4_dst = src->ip;
  fl2.fl4_dst = dst->ip;
  if (!afinfo->route((struct dst_entry **)&rt1, &fl1)) {
   if (!afinfo->route((struct dst_entry **)&rt2, &fl2)) {
    if (rt1->rt_gateway == rt2->rt_gateway &&
        rt1->u.dst.dev == rt2->u.dst.dev)
     ret = 1;
    dst_release(&rt2->u.dst);
   }
   dst_release(&rt1->u.dst);
  }
  break;
 }
 }
 return ret;

}
