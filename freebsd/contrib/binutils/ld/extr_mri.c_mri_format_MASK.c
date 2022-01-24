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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 

void
FUNC4 (const char *name)
{
  if (FUNC3 (name, "S") == 0)
    FUNC2 ("srec", NULL, NULL, 1);

  else if (FUNC3 (name, "IEEE") == 0)
    FUNC2 ("ieee", NULL, NULL, 1);

  else if (FUNC3 (name, "COFF") == 0)
    FUNC2 ("coff-m68k", NULL, NULL, 1);

  else
    FUNC1 (FUNC0("%P%F: unknown format type %s\n"), name);
}