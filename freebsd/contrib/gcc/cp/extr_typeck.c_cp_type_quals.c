
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int TYPE_QUALS (scalar_t__) ;
 int TYPE_UNQUALIFIED ;
 scalar_t__ error_mark_node ;
 scalar_t__ strip_array_types (scalar_t__) ;

int
cp_type_quals (tree type)
{
  type = strip_array_types (type);
  if (type == error_mark_node)
    return TYPE_UNQUALIFIED;
  return TYPE_QUALS (type);
}
