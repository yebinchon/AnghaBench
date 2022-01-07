
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ TARGET_ELF ;
 int TARGET_IEEEQUAD ;
 scalar_t__ TARGET_LONG_DOUBLE_128 ;
 scalar_t__ TYPE_MAIN_VARIANT (scalar_t__) ;
 scalar_t__ bool_char_type_node ;
 scalar_t__ bool_int_type_node ;
 scalar_t__ bool_short_type_node ;
 scalar_t__ long_double_type_node ;
 scalar_t__ pixel_type_node ;

__attribute__((used)) static const char *
rs6000_mangle_fundamental_type (tree type)
{
  if (type == bool_char_type_node) return "U6__boolc";
  if (type == bool_short_type_node) return "U6__bools";
  if (type == pixel_type_node) return "u7__pixel";
  if (type == bool_int_type_node) return "U6__booli";



  if (TYPE_MAIN_VARIANT (type) == long_double_type_node
      && TARGET_ELF
      && TARGET_LONG_DOUBLE_128
      && !TARGET_IEEEQUAD)
    return "g";


  return ((void*)0);
}
