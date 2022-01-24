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

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long,long,long) ; 

const char *
FUNC2 (long value, long min, long max)
{
  if (value < min || value > max)
    {
      static char buf[100];

      /* xgettext:c-format */
      FUNC1 (buf, FUNC0("operand out of range (%ld not between %ld and %ld)"),
		      value, min, max);
      return buf;
    }

  return NULL;
}