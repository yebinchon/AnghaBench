
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int DECL_CONSTRUCTOR_P (int ) ;
 int DECL_NONCONVERTING_P (int ) ;
 int DECL_VIRTUAL_P (int ) ;

 int TREE_CODE (int ) ;
 int pp_c_base (int *) ;
 int pp_c_function_specifier (int ,int ) ;
 int pp_cxx_identifier (int *,char*) ;

__attribute__((used)) static void
pp_cxx_function_specifier (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 128:
      if (DECL_VIRTUAL_P (t))
 pp_cxx_identifier (pp, "virtual");
      else if (DECL_CONSTRUCTOR_P (t) && DECL_NONCONVERTING_P (t))
 pp_cxx_identifier (pp, "explicit");
      else
 pp_c_function_specifier (pp_c_base (pp), t);

    default:
      break;
    }
}
