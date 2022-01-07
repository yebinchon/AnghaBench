
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ current_tinst_level ;
 int pop_tinst_level () ;
 scalar_t__ tinst_depth ;

__attribute__((used)) static void
reopen_tinst_level (tree level)
{
  tree t;

  tinst_depth = 0;
  for (t = level; t; t = TREE_CHAIN (t))
    ++tinst_depth;

  current_tinst_level = level;
  pop_tinst_level ();
}
