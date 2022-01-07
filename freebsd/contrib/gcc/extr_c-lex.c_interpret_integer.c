
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tree ;
typedef enum integer_type_kind { ____Placeholder_integer_type_kind } integer_type_kind ;
typedef int cpp_token ;
struct TYPE_7__ {int precision; } ;
typedef TYPE_1__ cpp_options ;
struct TYPE_8__ {int high; int low; } ;
typedef TYPE_2__ cpp_num ;


 unsigned int CPP_N_DECIMAL ;
 unsigned int CPP_N_IMAGINARY ;
 unsigned int CPP_N_LARGE ;
 unsigned int CPP_N_RADIX ;
 unsigned int CPP_N_UNSIGNED ;
 unsigned int CPP_N_WIDTH ;
 int MIN (int,int) ;
 int NULL_TREE ;
 int OPT_Wtraditional ;
 int build_complex (int ,int ,int ) ;
 int build_int_cst (int ,int ) ;
 int build_int_cst_wide (int ,int ,int ) ;
 TYPE_1__* cpp_get_options (int ) ;
 TYPE_2__ cpp_interpret_integer (int ,int const*,unsigned int) ;
 TYPE_2__ cpp_num_sign_extend (TYPE_2__,int ) ;
 int flag_isoc99 ;
 int in_system_header ;
 int * integer_types ;
 int itk_long ;
 int itk_none ;
 int itk_unsigned_long ;
 int narrowest_signed_type (int ,int ,unsigned int) ;
 int narrowest_unsigned_type (int ,int ,unsigned int) ;
 int parse_in ;
 int pedwarn (char*,char*) ;
 int warning (int ,char*) ;
 int widest_integer_literal_type_node ;
 int widest_unsigned_literal_type_node ;

__attribute__((used)) static tree
interpret_integer (const cpp_token *token, unsigned int flags)
{
  tree value, type;
  enum integer_type_kind itk;
  cpp_num integer;
  cpp_options *options = cpp_get_options (parse_in);

  integer = cpp_interpret_integer (parse_in, token, flags);
  integer = cpp_num_sign_extend (integer, options->precision);


  if (flags & CPP_N_UNSIGNED)
    itk = narrowest_unsigned_type (integer.low, integer.high, flags);
  else
    {



      enum integer_type_kind itk_u
 = narrowest_unsigned_type (integer.low, integer.high, flags);
      enum integer_type_kind itk_s
 = narrowest_signed_type (integer.low, integer.high, flags);





      if ((flags & CPP_N_RADIX) != CPP_N_DECIMAL)
 itk = MIN (itk_u, itk_s);
      else
 {






   itk = itk_s;
   if (itk_s > itk_u && itk_s > itk_long)
     {
       if (!flag_isoc99)
  {
    if (itk_u < itk_unsigned_long)
      itk_u = itk_unsigned_long;
    itk = itk_u;
    warning (0, "this decimal constant is unsigned only in ISO C90");
  }
       else
  warning (OPT_Wtraditional,
    "this decimal constant would be unsigned in ISO C90");
     }
 }
    }

  if (itk == itk_none)

    type = ((flags & CPP_N_UNSIGNED)
     ? widest_unsigned_literal_type_node
     : widest_integer_literal_type_node);
  else
    type = integer_types[itk];

  if (itk > itk_unsigned_long
      && (flags & CPP_N_WIDTH) != CPP_N_LARGE
      && !in_system_header && !flag_isoc99)
    pedwarn ("integer constant is too large for %qs type",
      (flags & CPP_N_UNSIGNED) ? "unsigned long" : "long");

  value = build_int_cst_wide (type, integer.low, integer.high);


  if (flags & CPP_N_IMAGINARY)
    value = build_complex (NULL_TREE, build_int_cst (type, 0), value);

  return value;
}
