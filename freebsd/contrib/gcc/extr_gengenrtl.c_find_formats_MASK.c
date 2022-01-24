#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {char* format; } ;

/* Variables and functions */
 unsigned int NUM_RTX_CODE ; 
 TYPE_1__* defs ; 
 char** formats ; 
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  unsigned int i;

  for (i = 0; i < NUM_RTX_CODE; i++)
    {
      const char **f;

      if (FUNC0 (defs[i].format))
	continue;

      for (f = formats; *f; f++)
	if (! FUNC1 (*f, defs[i].format))
	  break;

      if (*f == 0)
	*f = defs[i].format;
    }
}