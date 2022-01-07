
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ METHOD_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int error (char*) ;

bool
invalid_nonstatic_memfn_p (tree expr)
{
  if (TREE_CODE (TREE_TYPE (expr)) == METHOD_TYPE)
    {
      error ("invalid use of non-static member function");
      return 1;
    }
  return 0;
}
