
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ target_size; } ;
struct ipt_entry_target {TYPE_1__ u; } ;
struct ipt_entry {scalar_t__ target_offset; scalar_t__ next_offset; int ip; } ;


 int EINVAL ;
 int duprintf (char*,struct ipt_entry*,char const*) ;
 int ip_checkentry (int *) ;
 struct ipt_entry_target* ipt_get_target (struct ipt_entry*) ;

__attribute__((used)) static int
check_entry(struct ipt_entry *e, const char *name)
{
 struct ipt_entry_target *t;

 if (!ip_checkentry(&e->ip)) {
  duprintf("ip_tables: ip check failed %p %s.\n", e, name);
  return -EINVAL;
 }

 if (e->target_offset + sizeof(struct ipt_entry_target) >
     e->next_offset)
  return -EINVAL;

 t = ipt_get_target(e);
 if (e->target_offset + t->u.target_size > e->next_offset)
  return -EINVAL;

 return 0;
}
