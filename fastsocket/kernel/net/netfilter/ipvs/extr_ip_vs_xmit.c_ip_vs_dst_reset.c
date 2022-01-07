
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip_vs_dest {struct dst_entry* dst_cache; } ;
struct dst_entry {int dummy; } ;


 int dst_release (struct dst_entry*) ;

void
ip_vs_dst_reset(struct ip_vs_dest *dest)
{
 struct dst_entry *old_dst;

 old_dst = dest->dst_cache;
 dest->dst_cache = ((void*)0);
 dst_release(old_dst);
}
