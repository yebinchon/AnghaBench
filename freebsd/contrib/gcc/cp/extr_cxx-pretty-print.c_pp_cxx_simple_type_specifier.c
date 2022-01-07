
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;







 int TREE_CODE (int ) ;

 int TYPE_CONTEXT (int ) ;
 int TYPE_NAME (int ) ;

 int pp_c_base (int *) ;
 int pp_c_type_specifier (int ,int ) ;
 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_nested_name_specifier (int *,int ) ;
 int pp_cxx_qualified_id (int *,int ) ;
 int pp_cxx_unqualified_id (int *,int ) ;

__attribute__((used)) static void
pp_cxx_simple_type_specifier (cxx_pretty_printer *pp, tree t)
{
  switch (TREE_CODE (t))
    {
    case 133:
    case 128:
    case 134:
      pp_cxx_qualified_id (pp, t);
      break;

    case 130:
    case 131:
    case 132:
      pp_cxx_unqualified_id (pp, t);
      break;

    case 129:
      pp_cxx_identifier (pp, "typename");
      pp_cxx_nested_name_specifier (pp, TYPE_CONTEXT (t));
      pp_cxx_unqualified_id (pp, TYPE_NAME (t));
      break;

    default:
      pp_c_type_specifier (pp_c_base (pp), t);
      break;
    }
}
