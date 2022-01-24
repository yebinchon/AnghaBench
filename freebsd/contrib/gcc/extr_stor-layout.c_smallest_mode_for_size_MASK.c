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
 int FUNC0 (int) ; 
 unsigned int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int VOIDmode ; 
 int /*<<< orphan*/  FUNC3 () ; 

enum machine_mode
FUNC4 (unsigned int size, enum mode_class class)
{
  enum machine_mode mode;

  /* Get the first mode which has at least this size, in the
     specified class.  */
  for (mode = FUNC0 (class); mode != VOIDmode;
       mode = FUNC2 (mode))
    if (FUNC1 (mode) >= size)
      return mode;

  FUNC3 ();
}