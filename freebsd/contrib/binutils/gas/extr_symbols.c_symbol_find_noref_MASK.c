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
typedef  int /*<<< orphan*/  symbolS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 
 int FUNC3 (char const*) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,int) ; 
 int /*<<< orphan*/  symbols_case_sensitive ; 
 char* FUNC5 (char*) ; 

symbolS *
FUNC6 (const char *name, int noref)
{
#ifdef tc_canonicalize_symbol_name
  {
    char *copy;
    size_t len = strlen (name) + 1;

    copy = (char *) alloca (len);
    memcpy (copy, name, len);
    name = tc_canonicalize_symbol_name (copy);
  }
#endif

  if (! symbols_case_sensitive)
    {
      char *copy;
      const char *orig;
      unsigned char c;

      orig = name;
      name = copy = (char *) FUNC1 (FUNC3 (name) + 1);

      while ((c = *orig++) != '\0')
	{
	  *copy++ = FUNC0 (c);
	}
      *copy = '\0';
    }

  return FUNC4 (name, noref);
}