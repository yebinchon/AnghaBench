
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omp_region {int type; struct omp_region* next; struct omp_region* inner; int entry; struct omp_region* outer; } ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int basic_block ;


 struct omp_region* root_omp_region ;
 struct omp_region* xcalloc (int,int) ;

struct omp_region *
new_omp_region (basic_block bb, enum tree_code type, struct omp_region *parent)
{
  struct omp_region *region = xcalloc (1, sizeof (*region));

  region->outer = parent;
  region->entry = bb;
  region->type = type;

  if (parent)
    {


      region->next = parent->inner;
      parent->inner = region;
    }
  else
    {


      region->next = root_omp_region;
      root_omp_region = region;
    }

  return region;
}
