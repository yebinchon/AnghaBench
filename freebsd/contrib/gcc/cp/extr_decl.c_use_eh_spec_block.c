
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int DECL_ARTIFICIAL (int ) ;
 int DECL_CLONED_FUNCTION_P (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_RAISES_EXCEPTIONS (int ) ;
 scalar_t__ flag_enforce_eh_specs ;
 scalar_t__ flag_exceptions ;
 int processing_template_decl ;

__attribute__((used)) static bool
use_eh_spec_block (tree fn)
{
  return (flag_exceptions && flag_enforce_eh_specs
   && !processing_template_decl
   && TYPE_RAISES_EXCEPTIONS (TREE_TYPE (fn))



   && !DECL_CLONED_FUNCTION_P (fn)
   && !DECL_ARTIFICIAL (fn));
}
