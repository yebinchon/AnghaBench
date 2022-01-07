
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ current_function_decl ;
 scalar_t__ decl_function_context (scalar_t__) ;
 int emit_jump (int ) ;
 int gcc_assert (int) ;
 int label_rtx (scalar_t__) ;

void
expand_goto (tree label)
{







  emit_jump (label_rtx (label));
}
