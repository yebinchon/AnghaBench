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
 char const* FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int FUNC3 (char const*) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static char *
FUNC5 (const char *prefix, const char *name)
{
  int len;
  char *copy;

  if (name[0] == '@')
    {
      len = FUNC3 (prefix) + FUNC3 (name);
      copy = FUNC4 (len + 1);
      FUNC2 (copy, prefix);
      FUNC1 (copy, name);
    }
  else
    {
      len = FUNC3 (FUNC0 (name)) + FUNC3 (prefix) + FUNC3 (name);
      copy = FUNC4 (len + 1);
      FUNC2 (copy, prefix);
      FUNC1 (copy, FUNC0 (name));
      FUNC1 (copy, name);
    }
  return copy;
}