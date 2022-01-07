
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ip_vs_dest {scalar_t__ dst_rtos; struct dst_entry* dst_cache; int dst_cookie; } ;
struct dst_entry {TYPE_1__* ops; scalar_t__ obsolete; } ;
struct TYPE_2__ {int * (* check ) (struct dst_entry*,int ) ;} ;


 int dst_hold (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 int * stub1 (struct dst_entry*,int ) ;

__attribute__((used)) static inline struct dst_entry *
__ip_vs_dst_check(struct ip_vs_dest *dest, u32 rtos)
{
 struct dst_entry *dst = dest->dst_cache;

 if (!dst)
  return ((void*)0);
 if ((dst->obsolete || rtos != dest->dst_rtos) &&
     dst->ops->check(dst, dest->dst_cookie) == ((void*)0)) {
  dest->dst_cache = ((void*)0);
  dst_release(dst);
  return ((void*)0);
 }
 dst_hold(dst);
 return dst;
}
