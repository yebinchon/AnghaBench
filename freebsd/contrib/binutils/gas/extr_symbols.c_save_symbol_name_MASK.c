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
 char FUNC0 (char) ; 
 int /*<<< orphan*/  notes ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,unsigned int) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/  symbols_case_sensitive ; 
 char* FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5 (const char *name)
{
  unsigned int name_length;
  char *ret;

  name_length = FUNC3 (name) + 1;	/* +1 for \0.  */
  FUNC2 (&notes, name, name_length);
  ret = FUNC1 (&notes);

#ifdef tc_canonicalize_symbol_name
  ret = tc_canonicalize_symbol_name (ret);
#endif

  if (! symbols_case_sensitive)
    {
      char *s;

      for (s = ret; *s != '\0'; s++)
	*s = FUNC0 (*s);
    }

  return ret;
}