
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ HOST_WIDE_INT ;


 scalar_t__ CONSTRUCTOR ;
 scalar_t__ TREE_CODE (int ) ;
 int categorize_ctor_elements (int ,scalar_t__*,scalar_t__*,int*) ;
 int initializer_zerop (int ) ;

__attribute__((used)) static int
all_zeros_p (tree exp)
{
  if (TREE_CODE (exp) == CONSTRUCTOR)

    {
      HOST_WIDE_INT nz_elts, count;
      bool must_clear;

      categorize_ctor_elements (exp, &nz_elts, &count, &must_clear);
      return nz_elts == 0;
    }

  return initializer_zerop (exp);
}
