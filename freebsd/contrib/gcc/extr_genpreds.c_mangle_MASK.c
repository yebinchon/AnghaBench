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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const) ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  rtl_obstack ; 

__attribute__((used)) static const char *
FUNC3 (const char *name)
{
  for (; *name; name++)
    switch (*name)
      {
      case '_': FUNC2 (rtl_obstack, "__", 2); break;
      case '<':	FUNC2 (rtl_obstack, "_l", 2); break;
      case '>':	FUNC2 (rtl_obstack, "_g", 2); break;
      default: FUNC0 (rtl_obstack, *name); break;
      }

  FUNC0 (rtl_obstack, '\0');
  return FUNC1 (rtl_obstack);
}