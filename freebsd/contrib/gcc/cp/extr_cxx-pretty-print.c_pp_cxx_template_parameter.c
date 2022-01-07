
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;


 int DECL_NAME (int ) ;


 int TREE_CODE (int ) ;
 int TREE_VALUE (int ) ;

 int pp_cxx_identifier (int *,char*) ;
 int pp_cxx_parameter_declaration (int *,int ) ;
 int pp_cxx_tree_identifier (int *,int ) ;
 int pp_unsupported_tree (int *,int ) ;

__attribute__((used)) static void
pp_cxx_template_parameter (cxx_pretty_printer *pp, tree t)
{
  tree parameter = TREE_VALUE (t);
  switch (TREE_CODE (parameter))
    {
    case 128:
      pp_cxx_identifier (pp, "class");
      if (DECL_NAME (parameter))
 pp_cxx_tree_identifier (pp, DECL_NAME (parameter));

      break;

    case 130:
      pp_cxx_parameter_declaration (pp, parameter);
      break;

    case 129:
      break;

    default:
      pp_unsupported_tree (pp, t);
      break;
    }
}
