
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;
struct cgroup_subsys_state {int dummy; } ;


 int CGROUP_SUBSYS_COUNT ;
 int CSS_SET_HASH_BITS ;
 struct hlist_head* css_set_table ;
 int hash_long (unsigned long,int ) ;

__attribute__((used)) static struct hlist_head *css_set_hash(struct cgroup_subsys_state *css[])
{
 int i;
 int index;
 unsigned long tmp = 0UL;

 for (i = 0; i < CGROUP_SUBSYS_COUNT; i++)
  tmp += (unsigned long)css[i];
 tmp = (tmp >> 16) ^ tmp;

 index = hash_long(tmp, CSS_SET_HASH_BITS);

 return &css_set_table[index];
}
