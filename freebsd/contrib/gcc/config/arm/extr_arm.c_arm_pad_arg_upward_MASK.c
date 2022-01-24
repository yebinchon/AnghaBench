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
 scalar_t__ BYTES_BIG_ENDIAN ; 
 scalar_t__ FUNC0 (int,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  TARGET_AAPCS_BASED ; 
 scalar_t__ upward ; 

bool
FUNC2 (enum machine_mode mode, tree type)
{
  if (!TARGET_AAPCS_BASED)
    return FUNC0(mode, type) == upward;

  if (type && BYTES_BIG_ENDIAN && FUNC1 (type))
    return false;

  return true;
}