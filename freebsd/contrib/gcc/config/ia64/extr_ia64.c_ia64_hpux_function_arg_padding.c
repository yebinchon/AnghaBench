
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
typedef enum direction { ____Placeholder_direction } direction ;


 scalar_t__ AGGREGATE_TYPE_P (scalar_t__) ;
 int DEFAULT_FUNCTION_ARG_PADDING (int,scalar_t__) ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ int_size_in_bytes (scalar_t__) ;
 int upward ;

enum direction
ia64_hpux_function_arg_padding (enum machine_mode mode, tree type)
{


   if (type && AGGREGATE_TYPE_P (type)
       && int_size_in_bytes (type) < UNITS_PER_WORD)
     return upward;


   return DEFAULT_FUNCTION_ARG_PADDING (mode, type);
}
