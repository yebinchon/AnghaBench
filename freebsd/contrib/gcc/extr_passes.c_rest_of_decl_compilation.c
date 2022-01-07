
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int (* type_decl ) (scalar_t__,int) ;} ;


 int ASM_FINISH_DECLARE_OBJECT (int ,scalar_t__,int,int) ;
 scalar_t__ DECL_ASSEMBLER_NAME_SET_P (scalar_t__) ;
 int DECL_ATTRIBUTES (scalar_t__) ;
 int DECL_DEFER_OUTPUT (scalar_t__) ;
 scalar_t__ DECL_EXTERNAL (scalar_t__) ;
 scalar_t__ DECL_INITIAL (scalar_t__) ;
 scalar_t__ DECL_REGISTER (scalar_t__) ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_STATIC (scalar_t__) ;
 int TREE_STRING_POINTER (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 int TV_SYMOUT ;
 int TV_VARCONST ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ VAR_DECL ;
 int asm_out_file ;
 int assemble_alias (scalar_t__,scalar_t__) ;
 int assemble_variable (scalar_t__,int,int,int ) ;
 int cgraph_varpool_finalize_decl (scalar_t__) ;
 int cgraph_varpool_node (scalar_t__) ;
 TYPE_1__* debug_hooks ;
 scalar_t__ errorcount ;
 scalar_t__ get_identifier (int ) ;
 scalar_t__ last_assemble_variable_decl ;
 scalar_t__ lookup_attribute (char*,int ) ;
 int make_decl_rtl (scalar_t__) ;
 scalar_t__ sorrycount ;
 int stub1 (scalar_t__,int) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

void
rest_of_decl_compilation (tree decl,
     int top_level,
     int at_end)
{


  {
    tree alias;
    alias = lookup_attribute ("alias", DECL_ATTRIBUTES (decl));
    if (alias)
      {
 alias = TREE_VALUE (TREE_VALUE (alias));
 alias = get_identifier (TREE_STRING_POINTER (alias));
 assemble_alias (decl, alias);
      }
  }



  if (DECL_ASSEMBLER_NAME_SET_P (decl) && DECL_REGISTER (decl))
    make_decl_rtl (decl);



  if (TREE_STATIC (decl) || DECL_EXTERNAL (decl)
      || TREE_CODE (decl) == FUNCTION_DECL)
    {
      timevar_push (TV_VARCONST);







      if ((at_end
    || !DECL_DEFER_OUTPUT (decl)
    || DECL_INITIAL (decl))
   && !DECL_EXTERNAL (decl))
 {
   if (TREE_CODE (decl) != FUNCTION_DECL)
     cgraph_varpool_finalize_decl (decl);
   else
     assemble_variable (decl, top_level, at_end, 0);
 }
      timevar_pop (TV_VARCONST);
    }
  else if (TREE_CODE (decl) == TYPE_DECL


    && !(sorrycount || errorcount))
    {
      timevar_push (TV_SYMOUT);
      debug_hooks->type_decl (decl, !top_level);
      timevar_pop (TV_SYMOUT);
    }


  if (TREE_CODE (decl) == VAR_DECL && !DECL_EXTERNAL (decl))
    cgraph_varpool_node (decl);
}
