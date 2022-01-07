
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
struct type {int dummy; } ;


 int VALUE_TYPE (struct value*) ;
 struct type* ada_lookup_struct_elt_type (int ,char*,int ,int *) ;

struct type *
ada_tag_type (struct value *val)
{
  return ada_lookup_struct_elt_type (VALUE_TYPE (val), "_tag", 0, ((void*)0));
}
