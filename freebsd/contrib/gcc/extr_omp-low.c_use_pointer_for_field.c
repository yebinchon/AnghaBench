
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ AGGREGATE_TYPE_P (int ) ;
 scalar_t__ DECL_EXTERNAL (int ) ;
 scalar_t__ DECL_HAS_VALUE_EXPR_P (int ) ;
 scalar_t__ RESULT_DECL ;
 scalar_t__ TREE_ADDRESSABLE (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_STATIC (int ) ;
 int TREE_TYPE (int ) ;

__attribute__((used)) static bool
use_pointer_for_field (tree decl, bool shared_p)
{
  if (AGGREGATE_TYPE_P (TREE_TYPE (decl)))
    return 1;



  if (shared_p)
    {




      if (TREE_STATIC (decl) || DECL_EXTERNAL (decl))
 return 1;





      if (TREE_CODE (decl) != RESULT_DECL && DECL_HAS_VALUE_EXPR_P (decl))
 return 1;



      if (TREE_ADDRESSABLE (decl))
 return 1;
    }

  return 0;
}
