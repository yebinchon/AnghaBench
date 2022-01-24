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
 int /*<<< orphan*/  TARGET_64BIT ; 
 int TImode ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 scalar_t__ FUNC1 (int,scalar_t__) ; 

__attribute__((used)) static bool
FUNC2 (enum machine_mode mode, tree type)
{
  if (FUNC1 (mode, type))
    return true;

  /* For 32-bit, we want TImode aggregates to go on the stack.  But watch out!
     The layout_type routine is crafty and tries to trick us into passing
     currently unsupported vector types on the stack by using TImode.  */
  return (!TARGET_64BIT && mode == TImode
	  && type && FUNC0 (type) != VECTOR_TYPE);
}