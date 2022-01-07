
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target_size; } ;
struct ip6t_entry_target {TYPE_1__ u; } ;
struct ip6t_entry {scalar_t__ target_offset; scalar_t__ next_offset; int ipv6; } ;


 int EINVAL ;
 int duprintf (char*,struct ip6t_entry*,char const*) ;
 int ip6_checkentry (int *) ;
 struct ip6t_entry_target* ip6t_get_target (struct ip6t_entry*) ;

__attribute__((used)) static int
check_entry(struct ip6t_entry *e, const char *name)
{
 struct ip6t_entry_target *t;

 if (!ip6_checkentry(&e->ipv6)) {
  duprintf("ip_tables: ip check failed %p %s.\n", e, name);
  return -EINVAL;
 }

 if (e->target_offset + sizeof(struct ip6t_entry_target) >
     e->next_offset)
  return -EINVAL;

 t = ip6t_get_target(e);
 if (e->target_offset + t->u.target_size > e->next_offset)
  return -EINVAL;

 return 0;
}
