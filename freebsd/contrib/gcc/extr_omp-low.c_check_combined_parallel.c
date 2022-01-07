
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct walk_stmt_info {int* info; } ;




 int TREE_CODE (int *) ;

__attribute__((used)) static tree
check_combined_parallel (tree *tp, int *walk_subtrees, void *data)
{
  struct walk_stmt_info *wi = data;
  int *info = wi->info;

  *walk_subtrees = 0;
  switch (TREE_CODE (*tp))
    {
    case 129:
    case 128:
      *info = *info == 0 ? 1 : -1;
      break;
    default:
      *info = -1;
      break;
    }
  return ((void*)0);
}
