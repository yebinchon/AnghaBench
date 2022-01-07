
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6_tnl {int * dst_cache; } ;


 int dst_release (int *) ;

__attribute__((used)) static inline void ip6_tnl_dst_reset(struct ip6_tnl *t)
{
 dst_release(t->dst_cache);
 t->dst_cache = ((void*)0);
}
