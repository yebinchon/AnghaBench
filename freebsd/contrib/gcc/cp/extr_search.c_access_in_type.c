
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int access_kind ;


 int BINFO_ACCESS (int ) ;
 int TYPE_BINFO (int ) ;
 int dfs_access_in_type ;
 int dfs_walk_once (int ,int *,int ,int ) ;

__attribute__((used)) static access_kind
access_in_type (tree type, tree decl)
{
  tree binfo = TYPE_BINFO (type);
  dfs_walk_once (binfo, ((void*)0), dfs_access_in_type, decl);

  return BINFO_ACCESS (binfo);
}
