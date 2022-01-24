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
struct group {int dummy; } ;
struct file_data {int dummy; } ;
typedef  long lin ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,long) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 long FUNC3 (struct group const*,char) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ *) ; 
 char* FUNC6 (char const*,char*) ; 
 long FUNC7 (struct file_data const*,long) ; 
 char* FUNC8 (size_t) ; 

__attribute__((used)) static char const *
FUNC9 (FILE *out, char const *spec,
		struct file_data const *file, lin n,
		struct group const *groups)
{
  char const *f = spec;
  char c;
  char c1;

  /* Scan printf-style SPEC of the form %[-'0]*[0-9]*(.[0-9]*)?[cdoxX].  */
  /* assert (*f == '%'); */
  f++;
  while ((c = *f++) == '-' || c == '\'' || c == '0')
    continue;
  while (FUNC0 (c))
    c = *f++;
  if (c == '.')
    while (FUNC0 (c = *f++))
      continue;
  c1 = *f++;

  switch (c)
    {
    case 'c':
      if (c1 != '\'')
	return 0;
      else
	{
	  char value;
	  f = FUNC6 (f, &value);
	  if (!f)
	    return 0;
	  if (out)
	    FUNC5 (value, out);
	}
      break;

    case 'd': case 'o': case 'x': case 'X':
      {
	lin value;

	if (file)
	  {
	    if (c1 != 'n')
	      return 0;
	    value = FUNC7 (file, n);
	  }
	else
	  {
	    value = FUNC3 (groups, c1);
	    if (value < 0)
	      return 0;
	  }

	if (out)
	  {
	    /* For example, if the spec is "%3xn", use the printf
	       format spec "%3lx".  Here the spec prefix is "%3".  */
	    long int long_value = value;
	    size_t spec_prefix_len = f - spec - 2;
#if HAVE_C_VARARRAYS
	    char format[spec_prefix_len + 3];
#else
	    char *format = FUNC8 (spec_prefix_len + 3);
#endif
	    char *p = format + spec_prefix_len;
	    FUNC4 (format, spec, spec_prefix_len);
	    *p++ = 'l';
	    *p++ = c;
	    *p = '\0';
	    FUNC1 (out, format, long_value);
#if ! HAVE_C_VARARRAYS
	    FUNC2 (format);
#endif
	  }
      }
      break;

    default:
      return 0;
    }

  return f;
}