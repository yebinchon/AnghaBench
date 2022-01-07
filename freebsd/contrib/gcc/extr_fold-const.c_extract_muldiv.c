
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;


 int * extract_muldiv_1 (int *,int *,int,int *,int*) ;

__attribute__((used)) static tree
extract_muldiv (tree t, tree c, enum tree_code code, tree wide_type,
  bool *strict_overflow_p)
{





  static int depth;
  tree ret;

  if (depth > 3)
    return ((void*)0);

  depth++;
  ret = extract_muldiv_1 (t, c, code, wide_type, strict_overflow_p);
  depth--;

  return ret;
}
