
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ip6_tnl {struct dst_entry* dst_cache; int dst_cookie; } ;
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct TYPE_2__ {int * (* check ) (struct dst_entry*,int ) ;} ;


 int dst_release (struct dst_entry*) ;
 int * stub1 (struct dst_entry*,int ) ;

__attribute__((used)) static inline struct dst_entry *ip6_tnl_dst_check(struct ip6_tnl *t)
{
 struct dst_entry *dst = t->dst_cache;

 if (dst && dst->obsolete &&
     dst->ops->check(dst, t->dst_cookie) == ((void*)0)) {
  t->dst_cache = ((void*)0);
  dst_release(dst);
  return ((void*)0);
 }

 return dst;
}
