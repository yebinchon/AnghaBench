
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef int dump_info_p ;



 int AGGR_INIT_VIA_CTOR_P (int ) ;
 int BINFO_BASE_ITERATE (int ,int,int ) ;
 int BINFO_TYPE (int ) ;
 int BINFO_VIRTUAL_P (int ) ;
 int BINFO_VPTR_FIELD (int ) ;

 int CLASSTYPE_AS_BASE (int ) ;
 int CLASSTYPE_TEMPLATE_SPECIALIZATION (int ) ;
 int CLEANUP_BODY (int ) ;
 int CLEANUP_DECL (int ) ;
 int CLEANUP_EXPR (int ) ;
 int CLEANUP_P (int ) ;


 int CP_DECL_CONTEXT (int ) ;
 int DECL_CONSTRUCTOR_P (int ) ;
 int DECL_CONV_FN_P (int ) ;
 int DECL_DESTRUCTOR_P (int ) ;
 int DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION (int ) ;
 int DECL_FUNCTION_MEMBER_P (int ) ;
 int DECL_GLOBAL_CTOR_P (int ) ;
 int DECL_GLOBAL_DTOR_P (int ) ;
 int DECL_INITIAL (int ) ;
 scalar_t__ DECL_LANGUAGE (int ) ;
 scalar_t__ DECL_LANG_SPECIFIC (int ) ;
 int DECL_MUTABLE_P (int ) ;
 int DECL_NAMESPACE_ALIAS (int ) ;
 int DECL_OVERLOADED_OPERATOR_P (int ) ;
 scalar_t__ DECL_P (int ) ;
 int DECL_PURE_VIRTUAL_P (int ) ;
 int DECL_TEMPLATE_INSTANTIATIONS (int ) ;
 int DECL_TEMPLATE_PARMS (int ) ;
 int DECL_TEMPLATE_RESULT (int ) ;
 int DECL_TEMPLATE_SPECIALIZATIONS (int ) ;
 int DECL_THIS_THUNK_P (int ) ;
 int DECL_THUNK_P (int ) ;
 int DECL_VIRTUAL_P (int ) ;
 int DO_ATTRIBUTES (int ) ;
 int DO_BODY (int ) ;
 int DO_COND (int ) ;


 int EH_SPEC_RAISES (int ) ;
 int EH_SPEC_STMTS (int ) ;
 int ELSE_CLAUSE (int ) ;

 int EXPR_STMT_EXPR (int ) ;

 int FOR_ATTRIBUTES (int ) ;
 int FOR_BODY (int ) ;
 int FOR_COND (int ) ;
 int FOR_EXPR (int ) ;
 int FOR_INIT_STMT (int ) ;



 int HANDLER_BODY (int ) ;
 int HANDLER_PARMS (int ) ;

 int IDENTIFIER_OPNAME_P (int ) ;
 int IDENTIFIER_TYPENAME_P (int ) ;
 int IF_COND (int ) ;

 int IS_AGGR_TYPE (int ) ;




 int OVL_CHAIN (int ) ;
 int OVL_CURRENT (int ) ;

 int PTRMEM_CST_CLASS (int ) ;
 int PTRMEM_CST_MEMBER (int ) ;


 int STMT_EXPR_STMT (int ) ;

 int SWITCH_STMT_BODY (int ) ;
 int SWITCH_STMT_COND (int ) ;
 int TDF_SLIM ;

 int THEN_CLAUSE (int ) ;

 int THUNK_FIXED_OFFSET (int ) ;
 int THUNK_VIRTUAL_OFFSET (int ) ;
 int const TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int TREE_PUBLIC (int ) ;
 int TREE_STATIC (int ) ;
 int TREE_TYPE (int ) ;

 int TRY_HANDLERS (int ) ;
 int TRY_STMTS (int ) ;
 int TYPE_BINFO (int ) ;
 int TYPE_CONTEXT (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;
 int TYPE_PTRMEM_CLASS_TYPE (int ) ;
 int TYPE_PTRMEM_POINTED_TO_TYPE (int ) ;
 int TYPE_VFIELD (int ) ;


 int USING_STMT_NAMESPACE (int ) ;

 int WHILE_ATTRIBUTES (int ) ;
 int WHILE_BODY (int ) ;
 int WHILE_COND (int ) ;

 int c_dump_tree (int ,int ) ;
 int cp_namespace_decls (int ) ;
 int dump_access (int ,int ) ;
 int dump_child (char*,int ) ;
 int dump_flag (int ,int ,int ) ;
 int dump_int (int ,char*,int ) ;
 int dump_op (int ,int ) ;
 int dump_stmt (int ,int ) ;
 int dump_string (int ,char*) ;
 int dump_string_field (int ,char*,char*) ;
 scalar_t__ lang_cplusplus ;
 char* language_to_string (scalar_t__) ;
 int tree_low_cst (int ,int ) ;

bool
cp_dump_tree (void* dump_info, tree t)
{
  enum tree_code code;
  dump_info_p di = (dump_info_p) dump_info;


  code = TREE_CODE (t);

  if (DECL_P (t))
    {
      if (DECL_LANG_SPECIFIC (t) && DECL_LANGUAGE (t) != lang_cplusplus)
 dump_string_field (di, "lang", language_to_string (DECL_LANGUAGE (t)));
    }

  switch (code)
    {
    case 144:
      if (IDENTIFIER_OPNAME_P (t))
 {
   dump_string_field (di, "note", "operator");
   return 1;
 }
      else if (IDENTIFIER_TYPENAME_P (t))
 {
   dump_child ("tynm", TREE_TYPE (t));
   return 1;
 }
      break;

    case 140:
      dump_string_field (di, "note", "ptrmem");
      dump_child ("ptd", TYPE_PTRMEM_POINTED_TO_TYPE (t));
      dump_child ("cls", TYPE_PTRMEM_CLASS_TYPE (t));
      return 1;

    case 137:
      if (TYPE_PTRMEMFUNC_P (t))
 {
   dump_string_field (di, "note", "ptrmem");
   dump_child ("ptd", TYPE_PTRMEM_POINTED_TO_TYPE (t));
   dump_child ("cls", TYPE_PTRMEM_CLASS_TYPE (t));
   return 1;
 }


    case 131:

      if (TYPE_CONTEXT (t) && TREE_CODE (TYPE_CONTEXT (t)) == TREE_CODE (t)
   && CLASSTYPE_AS_BASE (TYPE_CONTEXT (t)) == t)
 {
   dump_child ("bfld", TYPE_CONTEXT (t));
   return 1;
 }

      if (! IS_AGGR_TYPE (t))
 break;

      dump_child ("vfld", TYPE_VFIELD (t));
      if (CLASSTYPE_TEMPLATE_SPECIALIZATION(t))
 dump_string(di, "spec");

      if (!dump_flag (di, TDF_SLIM, t) && TYPE_BINFO (t))
 {
   int i;
   tree binfo;
   tree base_binfo;

   for (binfo = TYPE_BINFO (t), i = 0;
        BINFO_BASE_ITERATE (binfo, i, base_binfo); ++i)
     {
       dump_child ("base", BINFO_TYPE (base_binfo));
       if (BINFO_VIRTUAL_P (base_binfo))
  dump_string_field (di, "spec", "virt");
       dump_access (di, base_binfo);
     }
 }
      break;

    case 148:
      dump_access (di, t);
      if (DECL_MUTABLE_P (t))
 dump_string_field (di, "spec", "mutable");
      break;

    case 129:
      if (TREE_CODE (CP_DECL_CONTEXT (t)) == 137)
 dump_access (di, t);
      if (TREE_STATIC (t) && !TREE_PUBLIC (t))
 dump_string_field (di, "link", "static");
      break;

    case 146:
      if (!DECL_THUNK_P (t))
 {
   if (DECL_OVERLOADED_OPERATOR_P (t)) {
     dump_string_field (di, "note", "operator");
     dump_op (di, t);
   }
   if (DECL_FUNCTION_MEMBER_P (t))
     {
       dump_string_field (di, "note", "member");
       dump_access (di, t);
     }
   if (DECL_PURE_VIRTUAL_P (t))
     dump_string_field (di, "spec", "pure");
   if (DECL_VIRTUAL_P (t))
     dump_string_field (di, "spec", "virt");
   if (DECL_CONSTRUCTOR_P (t))
     dump_string_field (di, "note", "constructor");
   if (DECL_DESTRUCTOR_P (t))
     dump_string_field (di, "note", "destructor");
   if (DECL_CONV_FN_P (t))
     dump_string_field (di, "note", "conversion");
   if (DECL_GLOBAL_CTOR_P (t))
     dump_string_field (di, "note", "global init");
   if (DECL_GLOBAL_DTOR_P (t))
     dump_string_field (di, "note", "global fini");
   if (DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION (t))
     dump_string_field (di, "note", "pseudo tmpl");
 }
      else
 {
   tree virt = THUNK_VIRTUAL_OFFSET (t);

   dump_string_field (di, "note", "thunk");
   if (DECL_THIS_THUNK_P (t))
     dump_string_field (di, "note", "this adjusting");
   else
     {
       dump_string_field (di, "note", "result adjusting");
       if (virt)
  virt = BINFO_VPTR_FIELD (virt);
     }
   dump_int (di, "fixd", THUNK_FIXED_OFFSET (t));
   if (virt)
     dump_int (di, "virt", tree_low_cst (virt, 0));
   dump_child ("fn", DECL_INITIAL (t));
 }
      break;

    case 141:
      if (DECL_NAMESPACE_ALIAS (t))
 dump_child ("alis", DECL_NAMESPACE_ALIAS (t));
      else if (!dump_flag (di, TDF_SLIM, t))
 dump_child ("dcls", cp_namespace_decls (t));
      break;

    case 134:
      dump_child ("rslt", DECL_TEMPLATE_RESULT (t));
      dump_child ("inst", DECL_TEMPLATE_INSTANTIATIONS (t));
      dump_child ("spcs", DECL_TEMPLATE_SPECIALIZATIONS (t));
      dump_child ("prms", DECL_TEMPLATE_PARMS (t));
      break;

    case 139:
      dump_child ("crnt", OVL_CURRENT (t));
      dump_child ("chan", OVL_CHAIN (t));
      break;

    case 132:
      dump_stmt (di, t);
      if (CLEANUP_P (t))
 dump_string_field (di, "note", "cleanup");
      dump_child ("body", TRY_STMTS (t));
      dump_child ("hdlr", TRY_HANDLERS (t));
      break;

    case 150:
      dump_stmt (di, t);
      dump_child ("body", EH_SPEC_STMTS (t));
      dump_child ("raises", EH_SPEC_RAISES (t));
      break;

    case 138:
      dump_child ("clas", PTRMEM_CST_CLASS (t));
      dump_child ("mbr", PTRMEM_CST_MEMBER (t));
      break;

    case 133:

      dump_child ("op 0", TREE_OPERAND (t, 0));
      break;

    case 155:
      dump_int (di, "ctor", AGGR_INIT_VIA_CTOR_P (t));
      dump_child ("fn", TREE_OPERAND (t, 0));
      dump_child ("args", TREE_OPERAND (t, 1));
      dump_child ("decl", TREE_OPERAND (t, 2));
      break;

    case 145:
      dump_stmt (di, t);
      dump_child ("parm", HANDLER_PARMS (t));
      dump_child ("body", HANDLER_BODY (t));
      break;

    case 142:
      dump_stmt (di, t);
      dump_child ("body", TREE_OPERAND (t, 0));
      break;

    case 130:
      dump_stmt (di, t);
      dump_child ("nmsp", USING_STMT_NAMESPACE (t));
      break;

    case 153:
      dump_stmt (di, t);
      dump_child ("decl", CLEANUP_DECL (t));
      dump_child ("expr", CLEANUP_EXPR (t));
      dump_child ("body", CLEANUP_BODY (t));
      break;

    case 143:
      dump_stmt (di, t);
      dump_child ("cond", IF_COND (t));
      dump_child ("then", THEN_CLAUSE (t));
      dump_child ("else", ELSE_CLAUSE (t));
      break;

    case 154:
    case 152:
      dump_stmt (di, t);
      break;

    case 151:
      dump_stmt (di, t);
      dump_child ("body", DO_BODY (t));
      dump_child ("cond", DO_COND (t));

      dump_child ("attrs", DO_ATTRIBUTES (t));

      break;

    case 147:
      dump_stmt (di, t);
      dump_child ("init", FOR_INIT_STMT (t));
      dump_child ("cond", FOR_COND (t));
      dump_child ("expr", FOR_EXPR (t));
      dump_child ("body", FOR_BODY (t));

      dump_child ("attrs", FOR_ATTRIBUTES (t));

      break;

    case 135:
      dump_stmt (di, t);
      dump_child ("cond", SWITCH_STMT_COND (t));
      dump_child ("body", SWITCH_STMT_BODY (t));
      break;

    case 128:
      dump_stmt (di, t);
      dump_child ("cond", WHILE_COND (t));
      dump_child ("body", WHILE_BODY (t));

      dump_child ("attrs", WHILE_ATTRIBUTES (t));

      break;

    case 136:
      dump_child ("stmt", STMT_EXPR_STMT (t));
      break;

    case 149:
      dump_stmt (di, t);
      dump_child ("expr", EXPR_STMT_EXPR (t));
      break;

    default:
      break;
    }

  return c_dump_tree (di, t);
}
