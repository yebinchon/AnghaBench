
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 int GET_MODE_SIZE (int) ;
 int gcc_unreachable () ;
 int int_size_in_bytes (scalar_t__) ;

__attribute__((used)) static int
s390_function_arg_size (enum machine_mode mode, tree type)
{
  if (type)
    return int_size_in_bytes (type);


  if (mode != BLKmode)
    return GET_MODE_SIZE (mode);


  gcc_unreachable ();
}
