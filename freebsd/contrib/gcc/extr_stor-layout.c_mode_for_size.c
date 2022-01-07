
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int BLKmode ;
 int GET_CLASS_NARROWEST_MODE (int) ;
 unsigned int GET_MODE_PRECISION (int) ;
 int GET_MODE_WIDER_MODE (int) ;
 unsigned int MAX_FIXED_MODE_SIZE ;
 int VOIDmode ;

enum machine_mode
mode_for_size (unsigned int size, enum mode_class class, int limit)
{
  enum machine_mode mode;

  if (limit && size > MAX_FIXED_MODE_SIZE)
    return BLKmode;


  for (mode = GET_CLASS_NARROWEST_MODE (class); mode != VOIDmode;
       mode = GET_MODE_WIDER_MODE (mode))
    if (GET_MODE_PRECISION (mode) == size)
      return mode;

  return BLKmode;
}
