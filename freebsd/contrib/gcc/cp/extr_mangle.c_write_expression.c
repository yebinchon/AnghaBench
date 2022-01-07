
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_6__ {int need_abi_warning; } ;
struct TYPE_5__ {scalar_t__ identifier; char* mangled_name; } ;
struct TYPE_4__ {scalar_t__ identifier; int arity; char* mangled_name; } ;


 scalar_t__ ADDR_EXPR ;
 int BASELINK ;
 scalar_t__ BASELINK_FUNCTIONS (scalar_t__) ;
 int BOUND_TEMPLATE_TEMPLATE_PARM ;


 int COND_EXPR ;

 int CONST_DECL ;
 scalar_t__ DECL_P (scalar_t__) ;
 TYPE_3__ G ;
 scalar_t__ IDENTIFIER_NODE ;
 scalar_t__ IDENTIFIER_OPNAME_P (scalar_t__) ;
 scalar_t__ IDENTIFIER_TYPENAME_P (scalar_t__) ;
 int LAST_CPLUS_TREE_CODE ;
 scalar_t__ NON_LVALUE_EXPR ;
 scalar_t__ NOP_EXPR ;
 scalar_t__ NULL_TREE ;
 int PTRMEM_CST ;
 int PTRMEM_CST_CLASS (scalar_t__) ;
 int PTRMEM_CST_MEMBER (scalar_t__) ;
 scalar_t__ REFERENCE_TYPE ;

 scalar_t__ SIZEOF_EXPR ;

 scalar_t__ TEMPLATE_ID_EXPR ;
 int TEMPLATE_PARM_INDEX ;
 int TEMPLATE_TEMPLATE_PARM ;
 int TEMPLATE_TYPE_PARM ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_CODE_CLASS (int) ;
 int TREE_CODE_LENGTH (int) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int) ;
 scalar_t__ TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 scalar_t__ TYPE_P (scalar_t__) ;
 scalar_t__ abi_version_at_least (int) ;
 TYPE_2__* assignment_operator_name_info ;
 scalar_t__ build_nt (scalar_t__,int ) ;
 int build_qualified_name (scalar_t__,int ,int ,int) ;
 int error (char*) ;
 int gcc_assert (int) ;
 TYPE_1__* operator_name_info ;
 int sorry (char*) ;
 scalar_t__ tcc_constant ;
 int write_char (char) ;
 int write_conversion_operator_name (scalar_t__) ;
 int write_encoding (scalar_t__) ;
 int write_mangled_name (scalar_t__,int) ;
 int write_source_name (scalar_t__) ;
 int write_string (char const*) ;
 int write_template_arg_literal (scalar_t__) ;
 int write_template_args (scalar_t__) ;
 int write_template_param (scalar_t__) ;
 int write_type (scalar_t__) ;

__attribute__((used)) static void
write_expression (tree expr)
{
  enum tree_code code;

  code = TREE_CODE (expr);




  while (TREE_CODE (expr) == NOP_EXPR
  || TREE_CODE (expr) == NON_LVALUE_EXPR)
    {
      expr = TREE_OPERAND (expr, 0);
      code = TREE_CODE (expr);
    }

  if (code == BASELINK)
    {
      expr = BASELINK_FUNCTIONS (expr);
      code = TREE_CODE (expr);
    }



  if (code == PTRMEM_CST)
    {
      expr = build_nt (ADDR_EXPR,
         build_qualified_name ( NULL_TREE,
          PTRMEM_CST_CLASS (expr),
          PTRMEM_CST_MEMBER (expr),
                         0));
      code = TREE_CODE (expr);
    }


  if (code == TEMPLATE_TYPE_PARM
      || code == TEMPLATE_TEMPLATE_PARM
      || code == BOUND_TEMPLATE_TEMPLATE_PARM
      || code == TEMPLATE_PARM_INDEX)
    write_template_param (expr);

  else if (TREE_CODE_CLASS (code) == tcc_constant
    || (abi_version_at_least (2) && code == CONST_DECL))
    write_template_arg_literal (expr);
  else if (DECL_P (expr))
    {


      if (code == CONST_DECL)
 G.need_abi_warning = 1;
      write_char ('L');
      write_mangled_name (expr, 0);
      write_char ('E');
    }
  else if (TREE_CODE (expr) == SIZEOF_EXPR
    && TYPE_P (TREE_OPERAND (expr, 0)))
    {
      write_string ("st");
      write_type (TREE_OPERAND (expr, 0));
    }
  else if (abi_version_at_least (2) && TREE_CODE (expr) == 129)
    {
      tree scope = TREE_OPERAND (expr, 0);
      tree member = TREE_OPERAND (expr, 1);






      if (DECL_P (member))
 write_expression (member);
      else
 {
   tree template_args;

   write_string ("sr");
   write_type (scope);


   if (TREE_CODE (member) == TEMPLATE_ID_EXPR)
     {
       template_args = TREE_OPERAND (member, 1);
       member = TREE_OPERAND (member, 0);
     }
   else
     template_args = NULL_TREE;

   if (IDENTIFIER_TYPENAME_P (member))
     write_conversion_operator_name (TREE_TYPE (member));
   else if (IDENTIFIER_OPNAME_P (member))
     {
       int i;
       const char *mangled_name = ((void*)0);




       for (i = 0; i < LAST_CPLUS_TREE_CODE; ++i)
  if (operator_name_info[i].identifier == member)
    {


      if (operator_name_info[i].arity == 2)
        {
   mangled_name = operator_name_info[i].mangled_name;
   break;
        }
      else if (!mangled_name)
        mangled_name = operator_name_info[i].mangled_name;
    }
  else if (assignment_operator_name_info[i].identifier
    == member)
    {
      mangled_name
        = assignment_operator_name_info[i].mangled_name;
      break;
    }
       write_string (mangled_name);
     }
   else
     write_source_name (member);

   if (template_args)
     write_template_args (template_args);
 }
    }
  else
    {
      int i;





      if (TREE_CODE (expr) == ADDR_EXPR
   && TREE_TYPE (expr)
   && TREE_CODE (TREE_TYPE (expr)) == REFERENCE_TYPE)
 {
   expr = TREE_OPERAND (expr, 0);
   if (DECL_P (expr))
     {
       write_expression (expr);
       return;
     }

   code = TREE_CODE (expr);
 }


      write_string (operator_name_info[(int) code].mangled_name);

      switch (code)
 {
 case 132:
   sorry ("call_expr cannot be mangled due to a defect in the C++ ABI");
   break;

 case 131:
   write_type (TREE_TYPE (expr));


   if (!TREE_OPERAND (expr, 0))
     sorry ("zero-operand casts cannot be mangled due to a defect "
     "in the C++ ABI");
   else
     write_expression (TREE_VALUE (TREE_OPERAND (expr, 0)));
   break;

 case 128:
 case 130:
   write_type (TREE_TYPE (expr));
   write_expression (TREE_OPERAND (expr, 0));
   break;



 case 129:
   write_type (TREE_OPERAND (expr, 0));
   if (TREE_CODE (TREE_OPERAND (expr, 1)) == IDENTIFIER_NODE)
     write_source_name (TREE_OPERAND (expr, 1));
   else if (TREE_CODE (TREE_OPERAND (expr, 1)) == TEMPLATE_ID_EXPR)
     {
       tree template_id;
       tree name;

       template_id = TREE_OPERAND (expr, 1);
       name = TREE_OPERAND (template_id, 0);

       gcc_assert (TREE_CODE (name) == IDENTIFIER_NODE);
       write_source_name (TREE_OPERAND (template_id, 0));
       write_template_args (TREE_OPERAND (template_id, 1));
     }
   else
     {


       G.need_abi_warning = 1;
       write_encoding (TREE_OPERAND (expr, 1));
     }
   break;

 default:
   for (i = 0; i < TREE_CODE_LENGTH (code); ++i)
     {
       tree operand = TREE_OPERAND (expr, i);





       if (code == COND_EXPR && i == 1 && !operand)
  {
    error ("omitted middle operand to %<?:%> operand "
    "cannot be mangled");
    continue;
  }
       write_expression (operand);
     }
 }
    }
}
