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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ sigtramp_address ; 
 scalar_t__ sigtramp_end ; 

__attribute__((used)) static int
FUNC1 (CORE_ADDR pc, char *ignore)
{
  if (sigtramp_address == 0)
    FUNC0 ();
  return (pc >= sigtramp_address && pc < sigtramp_end);
}