
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int INTEGRAL_TYPE_P (int ) ;
 scalar_t__ TYPE_OK (int ) ;
 int TYPE_PRECISION (int ) ;
 int TYPE_UNSIGNED (int ) ;
 int build_nonstandard_integer_type (int ,int) ;
 scalar_t__ c_dialect_cxx () ;
 int intDI_type_node ;
 int intHI_type_node ;
 int intQI_type_node ;
 int intSI_type_node ;
 int intTI_type_node ;
 int integer_type_node ;
 int long_integer_type_node ;
 int long_long_integer_type_node ;
 int long_long_unsigned_type_node ;
 int long_unsigned_type_node ;
 int short_integer_type_node ;
 int short_unsigned_type_node ;
 int signed_char_type_node ;
 int unsigned_char_type_node ;
 int unsigned_intDI_type_node ;
 int unsigned_intHI_type_node ;
 int unsigned_intQI_type_node ;
 int unsigned_intSI_type_node ;
 int unsigned_intTI_type_node ;
 int unsigned_type_node ;
 int widest_integer_literal_type_node ;
 int widest_unsigned_literal_type_node ;

tree
c_common_signed_or_unsigned_type (int unsignedp, tree type)
{
  if (!INTEGRAL_TYPE_P (type)
      || TYPE_UNSIGNED (type) == unsignedp)
    return type;
  if ((TYPE_MODE (type) == TYPE_MODE (signed_char_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (signed_char_type_node))))
    return unsignedp ? unsigned_char_type_node : signed_char_type_node;
  if ((TYPE_MODE (type) == TYPE_MODE (integer_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (integer_type_node))))
    return unsignedp ? unsigned_type_node : integer_type_node;
  if ((TYPE_MODE (type) == TYPE_MODE (short_integer_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (short_integer_type_node))))
    return unsignedp ? short_unsigned_type_node : short_integer_type_node;
  if ((TYPE_MODE (type) == TYPE_MODE (long_integer_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (long_integer_type_node))))
    return unsignedp ? long_unsigned_type_node : long_integer_type_node;
  if ((TYPE_MODE (type) == TYPE_MODE (long_long_integer_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (long_long_integer_type_node))))
    return (unsignedp ? long_long_unsigned_type_node
     : long_long_integer_type_node);
  if ((TYPE_MODE (type) == TYPE_MODE (widest_integer_literal_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (widest_integer_literal_type_node))))
    return (unsignedp ? widest_unsigned_literal_type_node
     : widest_integer_literal_type_node);





  if ((TYPE_MODE (type) == TYPE_MODE (intDI_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (intDI_type_node))))
    return unsignedp ? unsigned_intDI_type_node : intDI_type_node;
  if ((TYPE_MODE (type) == TYPE_MODE (intSI_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (intSI_type_node))))
    return unsignedp ? unsigned_intSI_type_node : intSI_type_node;
  if ((TYPE_MODE (type) == TYPE_MODE (intHI_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (intHI_type_node))))
    return unsignedp ? unsigned_intHI_type_node : intHI_type_node;
  if ((TYPE_MODE (type) == TYPE_MODE (intQI_type_node) && (c_dialect_cxx () || TYPE_PRECISION (type) == TYPE_PRECISION (intQI_type_node))))
    return unsignedp ? unsigned_intQI_type_node : intQI_type_node;


  if (c_dialect_cxx ())
    return type;
  else
    return build_nonstandard_integer_type (TYPE_PRECISION (type), unsignedp);
}
