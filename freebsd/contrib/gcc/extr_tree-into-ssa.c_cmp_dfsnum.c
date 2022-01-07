
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dom_dfsnum {scalar_t__ dfs_num; } ;



__attribute__((used)) static int
cmp_dfsnum (const void *a, const void *b)
{
  const struct dom_dfsnum *da = a;
  const struct dom_dfsnum *db = b;

  return (int) da->dfs_num - (int) db->dfs_num;
}
