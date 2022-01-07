
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct TYPE_5__ {size_t len; int text; } ;
struct TYPE_6__ {TYPE_1__ str; } ;
struct TYPE_7__ {TYPE_2__ val; } ;
typedef TYPE_3__ cpp_token ;
typedef int REAL_VALUE_TYPE ;


 unsigned int CPP_N_DEFAULT ;
 unsigned int CPP_N_DFLOAT ;
 unsigned int CPP_N_IMAGINARY ;
 unsigned int CPP_N_LARGE ;
 unsigned int CPP_N_MEDIUM ;
 unsigned int CPP_N_SMALL ;
 unsigned int CPP_N_WIDTH ;
 int NULL_TREE ;
 scalar_t__ REAL_VALUE_ISINF (int ) ;
 int TYPE_MODE (int ) ;
 scalar_t__ alloca (size_t) ;
 int build_complex (int ,int ,int ) ;
 int build_real (int ,int ) ;
 int convert (int ,int ) ;
 int dfloat128_type_node ;
 int dfloat32_type_node ;
 int dfloat64_type_node ;
 int double_type_node ;
 scalar_t__ flag_single_precision_constant ;
 int float_type_node ;
 int integer_zero_node ;
 int long_double_type_node ;
 int memcpy (char*,int ,size_t) ;
 scalar_t__ pedantic ;
 int pedwarn (char*,int ) ;
 int real_from_string3 (int *,char*,int ) ;

__attribute__((used)) static tree
interpret_float (const cpp_token *token, unsigned int flags)
{
  tree type;
  tree value;
  REAL_VALUE_TYPE real;
  char *copy;
  size_t copylen;


  if (flags & CPP_N_DEFAULT)
    {
      flags ^= CPP_N_DEFAULT;
      flags |= CPP_N_MEDIUM;
    }


  if (flags & CPP_N_DFLOAT)
    if ((flags & CPP_N_WIDTH) == CPP_N_LARGE)
      type = dfloat128_type_node;
    else if ((flags & CPP_N_WIDTH) == CPP_N_SMALL)
      type = dfloat32_type_node;
    else
      type = dfloat64_type_node;
  else
    if ((flags & CPP_N_WIDTH) == CPP_N_LARGE)
      type = long_double_type_node;
    else if ((flags & CPP_N_WIDTH) == CPP_N_SMALL
      || flag_single_precision_constant)
      type = float_type_node;
    else
      type = double_type_node;




  copylen = token->val.str.len;
  if (flags & CPP_N_DFLOAT)
    copylen -= 2;
  else
    {
      if ((flags & CPP_N_WIDTH) != CPP_N_MEDIUM)

 copylen--;
      if (flags & CPP_N_IMAGINARY)

 copylen--;
    }

  copy = (char *) alloca (copylen + 1);
  memcpy (copy, token->val.str.text, copylen);
  copy[copylen] = '\0';

  real_from_string3 (&real, copy, TYPE_MODE (type));






  if (REAL_VALUE_ISINF (real) && pedantic)
    pedwarn ("floating constant exceeds range of %qT", type);


  value = build_real (type, real);
  if (flags & CPP_N_IMAGINARY)
    value = build_complex (NULL_TREE, convert (type, integer_zero_node), value);

  return value;
}
