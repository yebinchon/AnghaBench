
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int dummy; } ;
typedef int FILE ;


 size_t MAP__NR_TYPES ;
 scalar_t__ __map_groups__fprintf_maps (struct map_groups*,size_t,int,int *) ;

size_t map_groups__fprintf_maps(struct map_groups *mg, int verbose, FILE *fp)
{
 size_t printed = 0, i;
 for (i = 0; i < MAP__NR_TYPES; ++i)
  printed += __map_groups__fprintf_maps(mg, i, verbose, fp);
 return printed;
}
