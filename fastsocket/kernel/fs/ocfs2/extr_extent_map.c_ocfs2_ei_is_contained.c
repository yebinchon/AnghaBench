
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_map_item {unsigned int ei_cpos; unsigned int ei_clusters; } ;



__attribute__((used)) static int ocfs2_ei_is_contained(struct ocfs2_extent_map_item *emi1,
     struct ocfs2_extent_map_item *emi2)
{
 unsigned int range1, range2;




 range1 = emi1->ei_cpos + emi1->ei_clusters;
 if (emi2->ei_cpos >= emi1->ei_cpos && emi2->ei_cpos < range1)
  return 1;




 range2 = emi2->ei_cpos + emi2->ei_clusters;
 if (range2 > emi1->ei_cpos && range2 <= range1)
  return 1;

 return 0;
}
