
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int TYPE_READONLY (int ) ;
 int strip_array_types (int ) ;

bool
cp_type_readonly (tree type)
{
  type = strip_array_types (type);
  return TYPE_READONLY (type);
}
