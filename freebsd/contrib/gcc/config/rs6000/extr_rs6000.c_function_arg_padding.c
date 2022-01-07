
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum direction { ____Placeholder_direction } direction ;
typedef int HOST_WIDE_INT ;


 scalar_t__ AGGREGATES_PAD_UPWARD_ALWAYS ;
 int AGGREGATE_PADDING_FIXED ;
 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 int BLKmode ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 int DEFAULT_FUNCTION_ARG_PADDING (int,scalar_t__) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ INTEGER_CST ;
 scalar_t__ TREE_CODE (int ) ;
 int TYPE_SIZE (scalar_t__) ;
 int downward ;
 int int_size_in_bytes (scalar_t__) ;
 int upward ;

enum direction
function_arg_padding (enum machine_mode mode, tree type)
{







  if (!0)
    {
      if (BYTES_BIG_ENDIAN)
 {
   HOST_WIDE_INT size = 0;

   if (mode == BLKmode)
     {
       if (type && TREE_CODE (TYPE_SIZE (type)) == INTEGER_CST)
  size = int_size_in_bytes (type);
     }
   else
     size = GET_MODE_SIZE (mode);

   if (size == 1 || size == 2 || size == 4)
     return downward;
 }
      return upward;
    }

  if (0)
    {
      if (type != 0 && AGGREGATE_TYPE_P (type))
 return upward;
    }


  return DEFAULT_FUNCTION_ARG_PADDING (mode, type);
}
