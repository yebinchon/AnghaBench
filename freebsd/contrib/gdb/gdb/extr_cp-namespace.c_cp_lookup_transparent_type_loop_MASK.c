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
struct type {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 struct type* FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static struct type *
FUNC6 (const char *name, const char *scope,
				 int length)
{
  int scope_length = length + FUNC2 (scope + length);
  char *full_name;

  /* If the current scope is followed by "::", look in the next
     component.  */
  if (scope[scope_length] == ':')
    {
      struct type *retval
	= FUNC6 (name, scope, scope_length + 2);
      if (retval != NULL)
	return retval;
    }

  full_name = FUNC0 (scope_length + 2 + FUNC4 (name) + 1);
  FUNC5 (full_name, scope, scope_length);
  FUNC5 (full_name + scope_length, "::", 2);
  FUNC3 (full_name + scope_length + 2, name);

  return FUNC1 (full_name);
}