
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;



 int DECL_CONSTRUCTOR_P (int ) ;
 int DECL_CONV_FN_P (int ) ;
 int DECL_NONSTATIC_MEMBER_FUNCTION_P (int ) ;




 int TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;

 int TYPE_PTRMEMFUNC_FN_TYPE (int ) ;
 int TYPE_PTRMEMFUNC_P (int ) ;

 int pp_c_base (int *) ;
 int pp_c_declaration_specifiers (int ,int ) ;
 int pp_cxx_function_specifier (int *,int ) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_ptr_operator (int *,int ) ;
 int pp_cxx_storage_class_specifier (int *,int ) ;
 int pp_cxx_whitespace (int *) ;

__attribute__((used)) static void
pp_cxx_decl_specifier_seq (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 128:
    case 131:
    case 134:
    case 133:
      pp_cxx_storage_class_specifier (pp, t);
      pp_cxx_decl_specifier_seq (pp, TREE_TYPE (t));
      break;

    case 129:
      pp_cxx_identifier (pp, "typedef");
      pp_cxx_decl_specifier_seq (pp, TREE_TYPE (t));
      break;

    case 130:
      if (TYPE_PTRMEMFUNC_P (t))
 {
   tree pfm = TYPE_PTRMEMFUNC_FN_TYPE (t);
   pp_cxx_decl_specifier_seq (pp, TREE_TYPE (TREE_TYPE (pfm)));
   pp_cxx_whitespace (pp);
   pp_cxx_ptr_operator (pp, t);
 }
      break;

    case 132:


      if (DECL_CONSTRUCTOR_P (t) || DECL_CONV_FN_P (t))
 pp_cxx_function_specifier (pp, t);
      else if (DECL_NONSTATIC_MEMBER_FUNCTION_P (t))
 pp_cxx_decl_specifier_seq (pp, TREE_TYPE (TREE_TYPE (t)));
      else
 default:
      pp_c_declaration_specifiers (pp_c_base (pp), t);
      break;
    }
}
