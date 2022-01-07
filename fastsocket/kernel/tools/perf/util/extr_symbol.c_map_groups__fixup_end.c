
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int dummy; } ;


 int MAP__NR_TYPES ;
 int __map_groups__fixup_end (struct map_groups*,int) ;

__attribute__((used)) static void map_groups__fixup_end(struct map_groups *mg)
{
 int i;
 for (i = 0; i < MAP__NR_TYPES; ++i)
  __map_groups__fixup_end(mg, i);
}
