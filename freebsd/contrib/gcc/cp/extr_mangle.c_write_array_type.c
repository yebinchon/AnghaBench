
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct TYPE_2__ {int need_abi_warning; } ;


 TYPE_1__ G ;
 scalar_t__ INTEGER_CST ;
 int PLUS_EXPR ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 scalar_t__ TREE_OPERAND (scalar_t__,int ) ;
 int TREE_TYPE (scalar_t__ const) ;
 scalar_t__ TYPE_DOMAIN (scalar_t__ const) ;
 scalar_t__ TYPE_MAX_VALUE (scalar_t__) ;
 int abi_version_at_least (int) ;
 int processing_template_decl ;
 scalar_t__ size_binop (int ,scalar_t__,int ) ;
 int size_one_node ;
 int tree_low_cst (scalar_t__,int) ;
 int value_dependent_expression_p (scalar_t__) ;
 int write_char (char) ;
 int write_expression (scalar_t__) ;
 int write_type (int ) ;
 int write_unsigned_number (int ) ;

__attribute__((used)) static void
write_array_type (const tree type)
{
  write_char ('A');
  if (TYPE_DOMAIN (type))
    {
      tree index_type;
      tree max;

      index_type = TYPE_DOMAIN (type);


      max = TYPE_MAX_VALUE (index_type);
      if (TREE_CODE (max) == INTEGER_CST)
 {


   max = size_binop (PLUS_EXPR, max, size_one_node);
   write_unsigned_number (tree_low_cst (max, 1));
 }
      else
 {
   max = TREE_OPERAND (max, 0);
   if (!abi_version_at_least (2))
     {


       ++processing_template_decl;
       if (!value_dependent_expression_p (max))
  G.need_abi_warning = 1;
       --processing_template_decl;
     }
   write_expression (max);
 }

    }
  write_char ('_');
  write_type (TREE_TYPE (type));
}
