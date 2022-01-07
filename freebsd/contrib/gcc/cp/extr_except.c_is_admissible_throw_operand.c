
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* tree ;


 scalar_t__ CLASSTYPE_PURE_VIRTUALS (char*) ;
 scalar_t__ CLASS_TYPE_P (char*) ;
 char* TREE_TYPE (char*) ;
 int complete_ptr_ref_or_void_ptr_p (char*,char*) ;
 int error (char*,char*,char*) ;

__attribute__((used)) static bool
is_admissible_throw_operand (tree expr)
{
  tree type = TREE_TYPE (expr);
  if (!complete_ptr_ref_or_void_ptr_p (type, expr))
    return 0;




  else if (CLASS_TYPE_P (type) && CLASSTYPE_PURE_VIRTUALS (type))
    {
      error ("expression %qE of abstract class type %qT cannot "
      "be used in throw-expression", expr, type);
      return 0;
    }

  return 1;
}
