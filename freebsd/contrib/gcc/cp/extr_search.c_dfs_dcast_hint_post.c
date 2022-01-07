
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct dcast_data_s {int virt_depth; } ;


 scalar_t__ BINFO_VIRTUAL_P (int ) ;
 int NULL_TREE ;

__attribute__((used)) static tree
dfs_dcast_hint_post (tree binfo, void *data_)
{
  struct dcast_data_s *data = (struct dcast_data_s *) data_;

  if (BINFO_VIRTUAL_P (binfo))
    data->virt_depth--;

  return NULL_TREE;
}
