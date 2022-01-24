#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum mode_class { ____Placeholder_mode_class } mode_class ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int BLKmode ; 
 int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 unsigned int MAX_FIXED_MODE_SIZE ; 
 int VOIDmode ; 

enum machine_mode
FUNC3 (unsigned int size, enum mode_class class, int limit)
{
  enum machine_mode mode;

  if (limit && size > MAX_FIXED_MODE_SIZE)
    return BLKmode;

  /* Get the first mode which has this size, in the specified class.  */
  for (mode = FUNC0 (class); mode != VOIDmode;
       mode = FUNC2 (mode))
    if (FUNC1 (mode) == size)
      return mode;

  return BLKmode;
}