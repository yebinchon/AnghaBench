
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;


 struct value* ada_value_struct_elt (struct value*,char*,char*) ;

struct value *
ada_value_tag (struct value *val)
{
  return ada_value_struct_elt (val, "_tag", "record");
}
