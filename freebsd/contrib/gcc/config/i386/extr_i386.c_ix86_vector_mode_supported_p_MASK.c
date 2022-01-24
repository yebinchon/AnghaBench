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
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;

/* Variables and functions */
 scalar_t__ TARGET_3DNOW ; 
 scalar_t__ TARGET_MMX ; 
 scalar_t__ TARGET_SSE ; 
 scalar_t__ TARGET_SSE2 ; 
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static bool
FUNC4 (enum machine_mode mode)
{
  if (TARGET_SSE && FUNC3 (mode))
    return true;
  if (TARGET_SSE2 && FUNC2 (mode))
    return true;
  if (TARGET_MMX && FUNC0 (mode))
    return true;
  if (TARGET_3DNOW && FUNC1 (mode))
    return true;
  return false;
}