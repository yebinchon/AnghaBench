
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int externally_visible; int inlinable; int disregard_inline_limits; } ;
struct cgraph_node {TYPE_1__ local; int origin; scalar_t__ needed; } ;


 int DECL_ASSEMBLER_NAME (scalar_t__) ;
 scalar_t__ DECL_ASSEMBLER_NAME_SET_P (scalar_t__) ;
 int DECL_ATTRIBUTES (scalar_t__) ;
 scalar_t__ DECL_COMDAT (scalar_t__) ;
 int DECL_DECLARED_INLINE_P (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 int DECL_INLINE (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 scalar_t__ DECL_STATIC_CONSTRUCTOR (scalar_t__) ;
 scalar_t__ DECL_STATIC_DESTRUCTOR (scalar_t__) ;
 scalar_t__ MAIN_NAME_P (int ) ;
 scalar_t__ TREE_PUBLIC (scalar_t__) ;
 scalar_t__ TREE_SYMBOL_REFERENCED (int ) ;
 int cgraph_default_inline_p (struct cgraph_node*,int *) ;
 scalar_t__ decl_function_context (scalar_t__) ;
 scalar_t__ flag_unit_at_a_time ;
 int flag_whole_program ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int optimize ;

__attribute__((used)) static bool
decide_is_function_needed (struct cgraph_node *node, tree decl)
{
  tree origin;
  if (MAIN_NAME_P (DECL_NAME (decl))
      && TREE_PUBLIC (decl))
    {
      node->local.externally_visible = 1;
      return 1;
    }


  if (node->local.externally_visible)
    return 1;

  if (!flag_unit_at_a_time && lookup_attribute ("used", DECL_ATTRIBUTES (decl)))
    return 1;




  if (DECL_ASSEMBLER_NAME_SET_P (decl)
      && TREE_SYMBOL_REFERENCED (DECL_ASSEMBLER_NAME (decl)))
    return 1;




  if (node->needed)
    return 1;
  if (((TREE_PUBLIC (decl)
 || (!optimize && !node->local.disregard_inline_limits
     && !DECL_DECLARED_INLINE_P (decl)
     && !node->origin))
      && !flag_whole_program)
      && !DECL_COMDAT (decl) && !DECL_EXTERNAL (decl))
    return 1;



  if (DECL_STATIC_CONSTRUCTOR (decl) || DECL_STATIC_DESTRUCTOR (decl))
    return 1;

  if (flag_unit_at_a_time)
    return 0;





  if (DECL_EXTERNAL (decl))
    return 0;


  for (origin = decl_function_context (decl); origin;
       origin = decl_function_context (origin))
    if (DECL_EXTERNAL (origin))
      return 0;

  if (DECL_COMDAT (decl))
    return 0;
  if (!DECL_INLINE (decl)
      || (!node->local.disregard_inline_limits


   && !DECL_DECLARED_INLINE_P (decl)
   && (!node->local.inlinable || !cgraph_default_inline_p (node, ((void*)0)))))
    return 1;

  return 0;
}
