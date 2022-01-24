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
typedef  scalar_t__ tree ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 int /*<<< orphan*/  BYTES_BIG_ENDIAN ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ MODE_FLOAT ; 
 int FUNC2 (int,scalar_t__) ; 

bool
FUNC3 (enum machine_mode mode, tree type)
{
  /* No shifting is required for floating-point arguments.  */
  if (type != 0 ? FUNC0 (type) : FUNC1 (mode) == MODE_FLOAT)
    return !BYTES_BIG_ENDIAN;

  /* Otherwise, apply the same padding to register arguments as we do
     to stack arguments.  */
  return FUNC2 (mode, type);
}