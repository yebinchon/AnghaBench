
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum direction { ____Placeholder_direction } direction ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 int DEFAULT_FUNCTION_ARG_PADDING (int,scalar_t__) ;
 scalar_t__ TARGET_ARCH64 ;
 int upward ;

enum direction
function_arg_padding (enum machine_mode mode, tree type)
{
  if (TARGET_ARCH64 && type != 0 && AGGREGATE_TYPE_P (type))
    return upward;


  return DEFAULT_FUNCTION_ARG_PADDING (mode, type);
}
