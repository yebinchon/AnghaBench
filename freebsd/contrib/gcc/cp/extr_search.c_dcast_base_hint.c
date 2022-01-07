
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
struct dcast_data_s {scalar_t__ offset; int repeated_base; scalar_t__ virt_depth; scalar_t__ subtype; } ;


 int CLASSTYPE_REPEATED_BASE_P (scalar_t__) ;
 scalar_t__ NULL_TREE ;
 int TYPE_BINFO (scalar_t__) ;
 int dfs_dcast_hint_post ;
 int dfs_dcast_hint_pre ;
 int dfs_walk_once_accessible (int ,int,int ,int ,struct dcast_data_s*) ;
 scalar_t__ ssize_int (int) ;

tree
dcast_base_hint (tree subtype, tree target)
{
  struct dcast_data_s data;

  data.subtype = subtype;
  data.virt_depth = 0;
  data.offset = NULL_TREE;
  data.repeated_base = CLASSTYPE_REPEATED_BASE_P (target);

  dfs_walk_once_accessible (TYPE_BINFO (target), 0,
       dfs_dcast_hint_pre, dfs_dcast_hint_post, &data);
  return data.offset ? data.offset : ssize_int (-2);
}
