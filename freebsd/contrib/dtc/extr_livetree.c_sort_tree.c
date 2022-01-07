
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dt_info {int dt; } ;


 int sort_node (int ) ;
 int sort_reserve_entries (struct dt_info*) ;

void sort_tree(struct dt_info *dti)
{
 sort_reserve_entries(dti);
 sort_node(dti->dt);
}
