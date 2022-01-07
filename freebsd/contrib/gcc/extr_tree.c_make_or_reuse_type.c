
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 unsigned int CHAR_TYPE_SIZE ;
 unsigned int INT_TYPE_SIZE ;
 unsigned int LONG_LONG_TYPE_SIZE ;
 unsigned int LONG_TYPE_SIZE ;
 unsigned int SHORT_TYPE_SIZE ;
 int integer_type_node ;
 int long_integer_type_node ;
 int long_long_integer_type_node ;
 int long_long_unsigned_type_node ;
 int long_unsigned_type_node ;
 int make_signed_type (unsigned int) ;
 int make_unsigned_type (unsigned int) ;
 int short_integer_type_node ;
 int short_unsigned_type_node ;
 int signed_char_type_node ;
 int unsigned_char_type_node ;
 int unsigned_type_node ;

__attribute__((used)) static tree
make_or_reuse_type (unsigned size, int unsignedp)
{
  if (size == INT_TYPE_SIZE)
    return unsignedp ? unsigned_type_node : integer_type_node;
  if (size == CHAR_TYPE_SIZE)
    return unsignedp ? unsigned_char_type_node : signed_char_type_node;
  if (size == SHORT_TYPE_SIZE)
    return unsignedp ? short_unsigned_type_node : short_integer_type_node;
  if (size == LONG_TYPE_SIZE)
    return unsignedp ? long_unsigned_type_node : long_integer_type_node;
  if (size == LONG_LONG_TYPE_SIZE)
    return (unsignedp ? long_long_unsigned_type_node
            : long_long_integer_type_node);

  if (unsignedp)
    return make_unsigned_type (size);
  else
    return make_signed_type (size);
}
