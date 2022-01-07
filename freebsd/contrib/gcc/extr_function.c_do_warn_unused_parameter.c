
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_ARGUMENTS (scalar_t__) ;
 int DECL_ARTIFICIAL (scalar_t__) ;
 scalar_t__ DECL_NAME (scalar_t__) ;
 int OPT_Wunused_parameter ;
 scalar_t__ PARM_DECL ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_USED (scalar_t__) ;
 int warning (int ,char*,scalar_t__) ;

void
do_warn_unused_parameter (tree fn)
{
  tree decl;

  for (decl = DECL_ARGUMENTS (fn);
       decl; decl = TREE_CHAIN (decl))
    if (!TREE_USED (decl) && TREE_CODE (decl) == PARM_DECL
 && DECL_NAME (decl) && !DECL_ARTIFICIAL (decl))
      warning (OPT_Wunused_parameter, "unused parameter %q+D", decl);
}
