
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_info3_param {struct dfs_info3_param* node_name; struct dfs_info3_param* path_name; } ;


 int kfree (struct dfs_info3_param*) ;

__attribute__((used)) static inline void free_dfs_info_param(struct dfs_info3_param *param)
{
 if (param) {
  kfree(param->path_name);
  kfree(param->node_name);
  kfree(param);
 }
}
