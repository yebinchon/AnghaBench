
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int gcc_unreachable () ;
 scalar_t__ const java_boolean_type_node ;
 scalar_t__ const java_byte_type_node ;
 scalar_t__ const java_char_type_node ;
 scalar_t__ const java_int_type_node ;
 scalar_t__ const java_long_type_node ;
 scalar_t__ const java_short_type_node ;
 int write_char (char) ;

__attribute__((used)) static void
write_java_integer_type_codes (const tree type)
{
  if (type == java_int_type_node)
    write_char ('i');
  else if (type == java_short_type_node)
    write_char ('s');
  else if (type == java_byte_type_node)
    write_char ('c');
  else if (type == java_char_type_node)
    write_char ('w');
  else if (type == java_long_type_node)
    write_char ('x');
  else if (type == java_boolean_type_node)
    write_char ('b');
  else
    gcc_unreachable ();
}
