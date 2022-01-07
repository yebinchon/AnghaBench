
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct map_groups {int dummy; } ;
typedef int FILE ;


 scalar_t__ fprintf (int *,char*) ;
 size_t map_groups__fprintf_maps (struct map_groups*,int,int *) ;
 size_t map_groups__fprintf_removed_maps (struct map_groups*,int,int *) ;

size_t map_groups__fprintf(struct map_groups *mg, int verbose, FILE *fp)
{
 size_t printed = map_groups__fprintf_maps(mg, verbose, fp);
 printed += fprintf(fp, "Removed maps:\n");
 return printed + map_groups__fprintf_removed_maps(mg, verbose, fp);
}
