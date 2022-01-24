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
typedef  scalar_t__ segT ;

/* Variables and functions */
 scalar_t__ absolute_section ; 
 int FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  stdoutput ; 

int
FUNC1 (segT seg)
{
  if (seg == absolute_section)
    return 0;

  return FUNC0 (stdoutput, seg);
}