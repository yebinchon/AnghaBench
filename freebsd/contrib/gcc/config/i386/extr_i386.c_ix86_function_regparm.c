
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct cgraph_local_info {scalar_t__ local; } ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {scalar_t__ force_align_arg_pointer; } ;


 int DECL_NO_STATIC_CHAIN (scalar_t__) ;
 TYPE_2__* DECL_STRUCT_FUNCTION (scalar_t__) ;
 int TARGET_64BIT ;
 int TREE_INT_CST_LOW (scalar_t__) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TYPE_ATTRIBUTES (scalar_t__) ;
 struct cgraph_local_info* cgraph_local_info (scalar_t__) ;
 scalar_t__ decl_function_context (scalar_t__) ;
 scalar_t__ flag_unit_at_a_time ;
 scalar_t__* global_regs ;
 char* ix86_force_align_arg_pointer_string ;
 int ix86_regparm ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int profile_flag ;

__attribute__((used)) static int
ix86_function_regparm (tree type, tree decl)
{
  tree attr;
  int regparm = ix86_regparm;
  bool user_convention = 0;

  if (!TARGET_64BIT)
    {
      attr = lookup_attribute ("regparm", TYPE_ATTRIBUTES (type));
      if (attr)
 {
   regparm = TREE_INT_CST_LOW (TREE_VALUE (TREE_VALUE (attr)));
   user_convention = 1;
 }

      if (lookup_attribute ("fastcall", TYPE_ATTRIBUTES (type)))
 {
   regparm = 2;
   user_convention = 1;
 }


      if (!TARGET_64BIT && !user_convention && decl
   && flag_unit_at_a_time && !profile_flag)
 {
   struct cgraph_local_info *i = cgraph_local_info (decl);
   if (i && i->local)
     {
       int local_regparm, globals = 0, regno;



       for (local_regparm = 0; local_regparm < 3; local_regparm++)
  if (global_regs[local_regparm])
    break;


       if (local_regparm == 3
    && decl_function_context (decl)
    && !DECL_NO_STATIC_CHAIN (decl))
  local_regparm = 2;






       if ((DECL_STRUCT_FUNCTION (decl)
     && DECL_STRUCT_FUNCTION (decl)->machine->force_align_arg_pointer)
    || (!DECL_STRUCT_FUNCTION (decl)
        && lookup_attribute (ix86_force_align_arg_pointer_string,
        TYPE_ATTRIBUTES (TREE_TYPE (decl)))))
  local_regparm = 2;



       for (regno = 0; regno < 6; regno++)
  if (global_regs[regno])
    globals++;
       local_regparm
  = globals < local_regparm ? local_regparm - globals : 0;

       if (local_regparm > regparm)
  regparm = local_regparm;
     }
 }
    }
  return regparm;
}
