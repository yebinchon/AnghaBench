
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int CP_DECL_CONTEXT (int ) ;
 int DECL_INITIAL (int ) ;
 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ TEMPLATE_PARM_INDEX ;
 int TFF_DECL_SPECIFIERS ;
 scalar_t__ TREE_CODE (int ) ;
 int cxx_pp ;
 int dump_decl (scalar_t__,int) ;
 int dump_scope (int ,int) ;
 int dump_type_prefix (int ,int) ;
 int dump_type_suffix (int ,int) ;
 int pp_identifier (int ,char*) ;
 int pp_maybe_space (int ) ;

__attribute__((used)) static void
dump_simple_decl (tree t, tree type, int flags)
{
  if (flags & TFF_DECL_SPECIFIERS)
    {
      dump_type_prefix (type, flags);
      pp_maybe_space (cxx_pp);
    }
  if (!DECL_INITIAL (t) || TREE_CODE (DECL_INITIAL (t)) != TEMPLATE_PARM_INDEX)
    dump_scope (CP_DECL_CONTEXT (t), flags);
  if (DECL_NAME (t))
    dump_decl (DECL_NAME (t), flags);
  else
    pp_identifier (cxx_pp, "<anonymous>");
  if (flags & TFF_DECL_SPECIFIERS)
    dump_type_suffix (type, flags);
}
