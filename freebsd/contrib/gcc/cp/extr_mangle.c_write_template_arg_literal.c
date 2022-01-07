
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;



 int const DECL_INITIAL (int const) ;


 int TREE_CODE (int const) ;
 int TREE_TYPE (int const) ;
 int boolean_type_node ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int integer_onep (int const) ;
 int integer_zerop (int const) ;
 int same_type_p (int ,int ) ;
 int write_char (char) ;
 int write_integer_cst (int const) ;
 int write_real_cst (int const) ;
 int write_type (int ) ;

__attribute__((used)) static void
write_template_arg_literal (const tree value)
{
  write_char ('L');
  write_type (TREE_TYPE (value));

  switch (TREE_CODE (value))
    {
    case 130:
      write_integer_cst (DECL_INITIAL (value));
      break;

    case 129:
      gcc_assert (!same_type_p (TREE_TYPE (value), boolean_type_node)
    || integer_zerop (value) || integer_onep (value));
      write_integer_cst (value);
      break;

    case 128:
      write_real_cst (value);
      break;

    default:
      gcc_unreachable ();
    }

  write_char ('E');
}
