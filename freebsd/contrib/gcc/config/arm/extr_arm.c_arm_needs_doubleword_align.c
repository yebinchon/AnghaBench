
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 scalar_t__ GET_MODE_ALIGNMENT (int) ;
 scalar_t__ PARM_BOUNDARY ;
 scalar_t__ TYPE_ALIGN (scalar_t__) ;

bool
arm_needs_doubleword_align (enum machine_mode mode, tree type)
{
  return (GET_MODE_ALIGNMENT (mode) > PARM_BOUNDARY
   || (type && TYPE_ALIGN (type) > PARM_BOUNDARY));
}
