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
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 char* FUNC4 (scalar_t__) ; 

char *
FUNC5 (const char *mangled, int options)
{
  char *demangled, *cp;

  if (mangled[0] == '_' &&
     (mangled[1] == 'i' || mangled[1] == 'c') &&
      mangled[2] == '_')
    {
      cp = demangled = FUNC4(FUNC2(mangled) + 2);

      if (mangled[1] == 'i')
	*cp++ = '-';		/* for instance method */
      else
	*cp++ = '+';		/* for class    method */

      *cp++ = '[';		/* opening left brace  */
      FUNC1(cp, mangled+3);	/* tack on the rest of the mangled name */

      while (*cp && *cp == '_')
	cp++;			/* skip any initial underbars in class name */

      cp = FUNC0(cp, '_');
      if (!cp)	                /* find first non-initial underbar */
	{
	  FUNC3(demangled);	/* not mangled name */
	  return NULL;
	}
      if (cp[1] == '_') {	/* easy case: no category name     */
	*cp++ = ' ';		/* replace two '_' with one ' '    */
	FUNC1(cp, mangled + (cp - demangled) + 2);
      }
      else {
	*cp++ = '(';		/* less easy case: category name */
	cp = FUNC0(cp, '_');
	if (!cp)
	  {
	    FUNC3(demangled);	/* not mangled name */
	    return NULL;
	  }
	*cp++ = ')';
	*cp++ = ' ';		/* overwriting 1st char of method name...  */
	FUNC1(cp, mangled + (cp - demangled));	/* get it back */
      }

      while (*cp && *cp == '_')
	cp++;			/* skip any initial underbars in method name */

      for (; *cp; cp++)
	if (*cp == '_')
	  *cp = ':';		/* replace remaining '_' with ':' */

      *cp++ = ']';		/* closing right brace */
      *cp++ = 0;		/* string terminator */
      return demangled;
    }
  else
    return NULL;	/* Not an objc mangled name.  */
}