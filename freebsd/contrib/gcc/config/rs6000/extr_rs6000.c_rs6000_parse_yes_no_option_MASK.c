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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static void
FUNC2 (const char *name, const char *value, int *flag)
{
  if (value == 0)
    return;
  else if (!FUNC1 (value, "yes"))
    *flag = 1;
  else if (!FUNC1 (value, "no"))
    *flag = 0;
  else
    FUNC0 ("unknown -m%s= option specified: '%s'", name, value);
}