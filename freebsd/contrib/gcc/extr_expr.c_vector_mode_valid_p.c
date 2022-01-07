
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_2__ {int (* scalar_mode_supported_p ) (int) ;scalar_t__ (* vector_mode_supported_p ) (int) ;} ;


 int GET_MODE_CLASS (int) ;
 int GET_MODE_INNER (int) ;
 int MODE_VECTOR_FLOAT ;
 int MODE_VECTOR_INT ;
 scalar_t__ stub1 (int) ;
 int stub2 (int) ;
 TYPE_1__ targetm ;

int
vector_mode_valid_p (enum machine_mode mode)
{
  enum mode_class class = GET_MODE_CLASS (mode);
  enum machine_mode innermode;


  if (class != MODE_VECTOR_INT
      && class != MODE_VECTOR_FLOAT)
    return 0;


  if (targetm.vector_mode_supported_p (mode))
    return 1;

  innermode = GET_MODE_INNER (mode);






  return targetm.scalar_mode_supported_p (innermode);
}
