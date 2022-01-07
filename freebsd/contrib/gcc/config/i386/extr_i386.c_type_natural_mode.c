
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef int HOST_WIDE_INT ;


 int GET_MODE_INNER (int) ;
 int GET_MODE_NUNITS (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 int MIN_MODE_VECTOR_FLOAT ;
 int MIN_MODE_VECTOR_INT ;
 scalar_t__ REAL_TYPE ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_TYPE (int ) ;
 int TYPE_MODE (int ) ;
 int TYPE_VECTOR_SUBPARTS (int ) ;
 int VECTOR_MODE_P (int) ;
 scalar_t__ VECTOR_TYPE ;
 int VOIDmode ;
 int gcc_unreachable () ;
 int int_size_in_bytes (int ) ;

__attribute__((used)) static enum machine_mode
type_natural_mode (tree type)
{
  enum machine_mode mode = TYPE_MODE (type);

  if (TREE_CODE (type) == VECTOR_TYPE && !VECTOR_MODE_P (mode))
    {
      HOST_WIDE_INT size = int_size_in_bytes (type);
      if ((size == 8 || size == 16)

   && TYPE_VECTOR_SUBPARTS (type) > 1)
 {
   enum machine_mode innermode = TYPE_MODE (TREE_TYPE (type));

   if (TREE_CODE (TREE_TYPE (type)) == REAL_TYPE)
     mode = MIN_MODE_VECTOR_FLOAT;
   else
     mode = MIN_MODE_VECTOR_INT;


   for (; mode != VOIDmode; mode = GET_MODE_WIDER_MODE (mode))
     if (GET_MODE_NUNITS (mode) == TYPE_VECTOR_SUBPARTS (type)
  && GET_MODE_INNER (mode) == innermode)
       return mode;

   gcc_unreachable ();
 }
    }

  return mode;
}
