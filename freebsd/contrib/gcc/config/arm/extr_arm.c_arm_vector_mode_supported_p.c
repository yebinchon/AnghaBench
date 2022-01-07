
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int V2SImode ;
 int V4HImode ;
 int V8QImode ;

bool
arm_vector_mode_supported_p (enum machine_mode mode)
{
  if ((mode == V2SImode)
      || (mode == V4HImode)
      || (mode == V8QImode))
    return 1;

  return 0;
}
