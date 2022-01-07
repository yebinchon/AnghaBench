
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TREE_VEC_ELT (int ,int) ;
 int TREE_VEC_LENGTH (int ) ;
 int eq_evolutions_p (int ,int ) ;

__attribute__((used)) static bool
all_chrecs_equal_p (tree chrec)
{
  int j;

  for (j = 0; j < TREE_VEC_LENGTH (chrec) - 1; j++)
    if (!eq_evolutions_p (TREE_VEC_ELT (chrec, j),
     TREE_VEC_ELT (chrec, j + 1)))
      return 0;

  return 1;
}
