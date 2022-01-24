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
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,int) ; 
 int FUNC2 (char*,char const* const,int) ; 
 char* FUNC3 (char const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int
FUNC5 (const char *string)
{
  const char *const name_end = FUNC3 (string, '=');

  if (name_end)
    {
      char *name = (char *) FUNC0 (name_end - string + 1);
      FUNC1 (name, string, name_end - string);
      name[name_end - string] = '\0';
      return FUNC2 (name, name_end + 1, 1);
    }

  FUNC4 (string);
  return 0;
}