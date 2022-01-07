
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 unsigned int TYPE_PRECISION (int ) ;
 int intDI_type_node ;
 int intHI_type_node ;
 int intQI_type_node ;
 int intSI_type_node ;
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
 int unsigned_type_node ;
 int widest_integer_literal_type_node ;
 int widest_unsigned_literal_type_node ;

tree
c_common_type_for_size (unsigned int bits, int unsignedp)
{
  if (bits == TYPE_PRECISION (integer_type_node))
    return unsignedp ? unsigned_type_node : integer_type_node;

  if (bits == TYPE_PRECISION (signed_char_type_node))
    return unsignedp ? unsigned_char_type_node : signed_char_type_node;

  if (bits == TYPE_PRECISION (short_integer_type_node))
    return unsignedp ? short_unsigned_type_node : short_integer_type_node;

  if (bits == TYPE_PRECISION (long_integer_type_node))
    return unsignedp ? long_unsigned_type_node : long_integer_type_node;

  if (bits == TYPE_PRECISION (long_long_integer_type_node))
    return (unsignedp ? long_long_unsigned_type_node
     : long_long_integer_type_node);

  if (bits == TYPE_PRECISION (widest_integer_literal_type_node))
    return (unsignedp ? widest_unsigned_literal_type_node
     : widest_integer_literal_type_node);

  if (bits <= TYPE_PRECISION (intQI_type_node))
    return unsignedp ? unsigned_intQI_type_node : intQI_type_node;

  if (bits <= TYPE_PRECISION (intHI_type_node))
    return unsignedp ? unsigned_intHI_type_node : intHI_type_node;

  if (bits <= TYPE_PRECISION (intSI_type_node))
    return unsignedp ? unsigned_intSI_type_node : intSI_type_node;

  if (bits <= TYPE_PRECISION (intDI_type_node))
    return unsignedp ? unsigned_intDI_type_node : intDI_type_node;

  return 0;
}
