
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int HOST_WIDE_INT ;


 scalar_t__ CONSTRUCTOR ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int categorize_ctor_elements (int ,int*,int*,int*) ;
 int count_type_elements (int ,int) ;
 int initializer_zerop (int ) ;

__attribute__((used)) static int
mostly_zeros_p (tree exp)
{
  if (TREE_CODE (exp) == CONSTRUCTOR)

    {
      HOST_WIDE_INT nz_elts, count, elts;
      bool must_clear;

      categorize_ctor_elements (exp, &nz_elts, &count, &must_clear);
      if (must_clear)
 return 1;

      elts = count_type_elements (TREE_TYPE (exp), 0);

      return nz_elts < elts / 4;
    }

  return initializer_zerop (exp);
}
