
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_info3_param {struct dfs_info3_param* node_name; struct dfs_info3_param* path_name; } ;


 int kfree (struct dfs_info3_param*) ;

__attribute__((used)) static inline void free_dfs_info_array(struct dfs_info3_param *param,
           int number_of_items)
{
 int i;
 if ((number_of_items == 0) || (param == ((void*)0)))
  return;
 for (i = 0; i < number_of_items; i++) {
  kfree(param[i].path_name);
  kfree(param[i].node_name);
 }
 kfree(param);
}
