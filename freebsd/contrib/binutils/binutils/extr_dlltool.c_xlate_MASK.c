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
 scalar_t__ add_stdcall_underscore ; 
 scalar_t__ add_underscore ; 
 scalar_t__ killat ; 
 char* FUNC0 (char const*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 char* FUNC3 (scalar_t__) ; 

__attribute__((used)) static const char *
FUNC4 (const char *name)
{
  int lead_at = (*name == '@');

  if (!lead_at && (add_underscore
		   || (add_stdcall_underscore
		       && FUNC0 (name, '@'))))
    {
      char *copy = FUNC3 (FUNC2 (name) + 2);

      copy[0] = '_';
      FUNC1 (copy + 1, name);
      name = copy;
    }

  if (killat)
    {
      char *p;

      name += lead_at;
      p = FUNC0 (name, '@');
      if (p)
	*p = 0;
    }
  return name;
}