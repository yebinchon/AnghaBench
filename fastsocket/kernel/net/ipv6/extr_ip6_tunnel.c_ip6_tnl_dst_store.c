
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {TYPE_1__* rt6i_node; } ;
struct ip6_tnl {struct dst_entry* dst_cache; int dst_cookie; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int fn_sernum; } ;


 int dst_release (struct dst_entry*) ;

__attribute__((used)) static inline void ip6_tnl_dst_store(struct ip6_tnl *t, struct dst_entry *dst)
{
 struct rt6_info *rt = (struct rt6_info *) dst;
 t->dst_cookie = rt->rt6i_node ? rt->rt6i_node->fn_sernum : 0;
 dst_release(t->dst_cache);
 t->dst_cache = dst;
}
