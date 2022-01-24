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
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 
 char* varargs_style_indicator ; 

__attribute__((used)) static int
FUNC3 (const char *ansi_header)
{
#ifdef UNPROTOIZE

  /* See if we have a stdarg function, or a function which has stdarg style
     parameters or a stdarg style return type.  */

  return strstr (ansi_header, "...") != 0;

#else /* !defined (UNPROTOIZE) */

  /* See if we have a varargs function, or a function which has varargs style
     parameters or a varargs style return type.  */

  const char *p;
  int len = FUNC1 (varargs_style_indicator);

  for (p = ansi_header; p; )
    {
      const char *candidate;

      if ((candidate = FUNC2 (p, varargs_style_indicator)) == 0)
	return 0;
      else
	if (!FUNC0 (candidate[-1]) && !FUNC0 (candidate[len]))
	  return 1;
	else
	  p = candidate + 1;
    }
  return 0;
#endif /* !defined (UNPROTOIZE) */
}