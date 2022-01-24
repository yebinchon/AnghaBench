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
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void
FUNC3 (char *comname)
{
  char *p;

  if (comname == 0)
    FUNC1 ("name of command to define");

  p = comname;
  while (*p)
    {
      if (!FUNC2 (*p) && *p != '-' && *p != '_')
	FUNC0 ("Junk in argument list: \"%s\"", p);
      p++;
    }
}