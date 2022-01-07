
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ CP_TYPE_CONST_P (int ) ;
 int DECL_INITIAL (int ) ;
 scalar_t__ REFERENCE_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_NEEDS_CONSTRUCTING (int ) ;
 scalar_t__ VAR_DECL ;
 int error (char*,int ) ;

__attribute__((used)) static void
check_for_uninitialized_const_var (tree decl)
{
  tree type = TREE_TYPE (decl);




  if (TREE_CODE (decl) == VAR_DECL
      && TREE_CODE (type) != REFERENCE_TYPE
      && CP_TYPE_CONST_P (type)
      && !TYPE_NEEDS_CONSTRUCTING (type)
      && !DECL_INITIAL (decl))
    error ("uninitialized const %qD", decl);
}
