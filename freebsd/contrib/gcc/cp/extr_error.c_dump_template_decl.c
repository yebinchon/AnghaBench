
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ DECL_TEMPLATE_PARMS (scalar_t__) ;
 int DECL_TEMPLATE_RESULT (scalar_t__) ;
 scalar_t__ DECL_TEMPLATE_TEMPLATE_PARM_P (scalar_t__) ;

 scalar_t__ INNERMOST_TEMPLATE_PARMS (scalar_t__) ;

 int NEXT_CODE (scalar_t__) ;
 int TFF_CLASS_KEY_OR_ENUM ;
 int TFF_DECL_SPECIFIERS ;
 int TFF_TEMPLATE_HEADER ;
 int TFF_TEMPLATE_NAME ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (scalar_t__) ;
 int TREE_VEC_ELT (scalar_t__,int) ;
 int TREE_VEC_LENGTH (scalar_t__) ;
 scalar_t__ TYPE_DECL ;
 scalar_t__ VAR_DECL ;
 int cxx_pp ;
 int dump_decl (int ,int) ;
 int dump_function_decl (scalar_t__,int) ;
 int dump_template_parameter (int ,int) ;
 int dump_type (int ,int) ;
 int gcc_assert (int ) ;
 scalar_t__ nreverse (scalar_t__) ;
 int pp_cxx_begin_template_argument_list (int ) ;
 int pp_cxx_end_template_argument_list (int ) ;
 int pp_cxx_identifier (int ,char*) ;
 int pp_cxx_whitespace (int ) ;
 int pp_separate_with_comma (int ) ;

__attribute__((used)) static void
dump_template_decl (tree t, int flags)
{
  tree orig_parms = DECL_TEMPLATE_PARMS (t);
  tree parms;
  int i;

  if (flags & TFF_TEMPLATE_HEADER)
    {
      for (parms = orig_parms = nreverse (orig_parms);
    parms;
    parms = TREE_CHAIN (parms))
 {
   tree inner_parms = INNERMOST_TEMPLATE_PARMS (parms);
   int len = TREE_VEC_LENGTH (inner_parms);

   pp_cxx_identifier (cxx_pp, "template");
   pp_cxx_begin_template_argument_list (cxx_pp);



     flags |= TFF_DECL_SPECIFIERS;

   for (i = 0; i < len; i++)
     {
       if (i)
  pp_separate_with_comma (cxx_pp);
       dump_template_parameter (TREE_VEC_ELT (inner_parms, i), flags);
     }
   pp_cxx_end_template_argument_list (cxx_pp);
   pp_cxx_whitespace (cxx_pp);
 }
      nreverse(orig_parms);

      if (DECL_TEMPLATE_TEMPLATE_PARM_P (t))

 pp_cxx_identifier (cxx_pp, "class");
    }

  if (TREE_CODE (DECL_TEMPLATE_RESULT (t)) == TYPE_DECL)
    dump_type (TREE_TYPE (t),
        ((flags & ~TFF_CLASS_KEY_OR_ENUM) | TFF_TEMPLATE_NAME
  | (flags & TFF_DECL_SPECIFIERS ? TFF_CLASS_KEY_OR_ENUM : 0)));
  else if (TREE_CODE (DECL_TEMPLATE_RESULT (t)) == VAR_DECL)
    dump_decl (DECL_TEMPLATE_RESULT (t), flags | TFF_TEMPLATE_NAME);
  else
    {
      gcc_assert (TREE_TYPE (t));
      switch (NEXT_CODE (t))
 {
 case 128:
 case 129:
   dump_function_decl (t, flags | TFF_TEMPLATE_NAME);
   break;
 default:

   dump_type (TREE_TYPE (t),
       (flags & ~TFF_CLASS_KEY_OR_ENUM) | TFF_TEMPLATE_NAME
       | (flags & TFF_DECL_SPECIFIERS
   ? TFF_CLASS_KEY_OR_ENUM : 0));
 }
    }
}
