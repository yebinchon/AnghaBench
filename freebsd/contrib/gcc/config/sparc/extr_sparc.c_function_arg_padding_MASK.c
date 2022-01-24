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
typedef  enum direction { ____Placeholder_direction } direction ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int,scalar_t__) ; 
 scalar_t__ TARGET_ARCH64 ; 
 int upward ; 

enum direction
FUNC2 (enum machine_mode mode, tree type)
{
  if (TARGET_ARCH64 && type != 0 && FUNC0 (type))
    return upward;

  /* Fall back to the default.  */
  return FUNC1 (mode, type);
}