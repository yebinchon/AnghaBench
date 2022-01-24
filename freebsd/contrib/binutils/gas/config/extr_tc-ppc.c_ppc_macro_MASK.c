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
struct powerpc_macro {unsigned int operands; char* format; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*,char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 unsigned int FUNC8 (char const*,char**,int) ; 

__attribute__((used)) static void
FUNC9 (char *str, const struct powerpc_macro *macro)
{
  char *operands[10];
  unsigned int count;
  char *s;
  unsigned int len;
  const char *format;
  unsigned int arg;
  char *send;
  char *complete;

  /* Gather the users operands into the operands array.  */
  count = 0;
  s = str;
  while (1)
    {
      if (count >= sizeof operands / sizeof operands[0])
	break;
      operands[count++] = s;
      s = FUNC5 (s, ',');
      if (s == (char *) NULL)
	break;
      *s++ = '\0';
    }

  if (count != macro->operands)
    {
      FUNC2 (FUNC0("wrong number of operands"));
      return;
    }

  /* Work out how large the string must be (the size is unbounded
     because it includes user input).  */
  len = 0;
  format = macro->format;
  while (*format != '\0')
    {
      if (*format != '%')
	{
	  ++len;
	  ++format;
	}
      else
	{
	  arg = FUNC8 (format + 1, &send, 10);
	  FUNC3 (send != format && arg < count);
	  len += FUNC7 (operands[arg]);
	  format = send;
	}
    }

  /* Put the string together.  */
  complete = s = (char *) FUNC1 (len + 1);
  format = macro->format;
  while (*format != '\0')
    {
      if (*format != '%')
	*s++ = *format++;
      else
	{
	  arg = FUNC8 (format + 1, &send, 10);
	  FUNC6 (s, operands[arg]);
	  s += FUNC7 (s);
	  format = send;
	}
    }
  *s = '\0';

  /* Assemble the constructed instruction.  */
  FUNC4 (complete);
}