
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ ARRAY_TYPE ;
 int DCmode ;
 int DFmode ;
 scalar_t__ GET_MODE_CLASS (int) ;
 int MIN (int,int) ;
 scalar_t__ MODE_COMPLEX_INT ;
 scalar_t__ MODE_INT ;
 scalar_t__ TARGET_64BIT ;
 scalar_t__ TARGET_ALIGN_DOUBLE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int get_inner_array_type (int ) ;

int
x86_field_alignment (tree field, int computed)
{
  enum machine_mode mode;
  tree type = TREE_TYPE (field);

  if (TARGET_64BIT || TARGET_ALIGN_DOUBLE)
    return computed;
  mode = TYPE_MODE (TREE_CODE (type) == ARRAY_TYPE
      ? get_inner_array_type (type) : type);
  if (mode == DFmode || mode == DCmode
      || GET_MODE_CLASS (mode) == MODE_INT
      || GET_MODE_CLASS (mode) == MODE_COMPLEX_INT)
    return MIN (32, computed);
  return computed;
}
