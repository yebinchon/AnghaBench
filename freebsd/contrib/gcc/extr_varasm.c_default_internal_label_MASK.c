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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char* const,char const*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char* const) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 

void
FUNC4 (FILE *stream, const char *prefix,
			unsigned long labelno)
{
  char *const buf = FUNC2 (40 + FUNC3 (prefix));
  FUNC0 (buf, prefix, labelno);
  FUNC1 (stream, buf);
}