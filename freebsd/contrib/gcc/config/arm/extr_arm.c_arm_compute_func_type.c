
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int * static_chain_decl; } ;


 unsigned long ARM_FT_INTERWORKED ;
 unsigned long ARM_FT_NAKED ;
 unsigned long ARM_FT_NESTED ;
 unsigned long ARM_FT_NORMAL ;
 unsigned long ARM_FT_UNKNOWN ;
 unsigned long ARM_FT_VOLATILE ;
 scalar_t__ DECL_ATTRIBUTES (int ) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ NULL_TREE ;
 scalar_t__ TARGET_INTERWORK ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_NOTHROW (int ) ;
 scalar_t__ TREE_THIS_VOLATILE (int ) ;
 int TREE_VALUE (scalar_t__) ;
 int USING_SJLJ_EXCEPTIONS ;
 unsigned long arm_isr_value (int ) ;
 TYPE_1__* cfun ;
 int current_function_decl ;
 scalar_t__ flag_exceptions ;
 scalar_t__ flag_unwind_tables ;
 int gcc_assert (int) ;
 scalar_t__ lookup_attribute (char*,scalar_t__) ;
 scalar_t__ optimize ;

__attribute__((used)) static unsigned long
arm_compute_func_type (void)
{
  unsigned long type = ARM_FT_UNKNOWN;
  tree a;
  tree attr;

  gcc_assert (TREE_CODE (current_function_decl) == FUNCTION_DECL);





  if (optimize > 0
      && (TREE_NOTHROW (current_function_decl)
          || !(flag_unwind_tables
               || (flag_exceptions && !USING_SJLJ_EXCEPTIONS)))
      && TREE_THIS_VOLATILE (current_function_decl))
    type |= ARM_FT_VOLATILE;

  if (cfun->static_chain_decl != ((void*)0))
    type |= ARM_FT_NESTED;

  attr = DECL_ATTRIBUTES (current_function_decl);

  a = lookup_attribute ("naked", attr);
  if (a != NULL_TREE)
    type |= ARM_FT_NAKED;

  a = lookup_attribute ("isr", attr);
  if (a == NULL_TREE)
    a = lookup_attribute ("interrupt", attr);

  if (a == NULL_TREE)
    type |= TARGET_INTERWORK ? ARM_FT_INTERWORKED : ARM_FT_NORMAL;
  else
    type |= arm_isr_value (TREE_VALUE (a));

  return type;
}
