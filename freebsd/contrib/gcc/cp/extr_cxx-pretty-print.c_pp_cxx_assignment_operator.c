
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int cxx_pretty_printer ;





 size_t TREE_CODE (int ) ;


 int pp_cxx_identifier (int *,char const*) ;
 char** tree_code_name ;

__attribute__((used)) static void
pp_cxx_assignment_operator (cxx_pretty_printer *pp, tree t)
{
  const char *op;

  switch (TREE_CODE (t))
    {
    case 131:
      op = "=";
      break;

    case 130:
      op = "+=";
      break;

    case 132:
      op = "-=";
      break;

    case 129:
      op = "/=";
      break;

    case 128:
      op = "%=";
      break;

    default:
      op = tree_code_name[TREE_CODE (t)];
      break;
    }

  pp_cxx_identifier (pp, op);
}
