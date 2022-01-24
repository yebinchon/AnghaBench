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
 int FUNC0 (char,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 
 int /*<<< orphan*/  NO_REGS ; 
 int /*<<< orphan*/  FUNC3 (char,char const*) ; 

__attribute__((used)) static int
FUNC4 (const char *p)
{
  char c;
  int found_zero = 0;
  int reg_allowed = 0;
  int num_matching_alts = 0;
  int len;

  for ( ; (c = *p); p += len)
    {
      len = FUNC0 (c, p);
      switch (c)
	{
	case '=':  case '+':  case '?':
	case '#':  case '&':  case '!':
	case '*':  case '%':
	case 'm':  case '<':  case '>':  case 'V':  case 'o':
	case 'E':  case 'F':  case 'G':  case 'H':
	case 's':  case 'i':  case 'n':
	case 'I':  case 'J':  case 'K':  case 'L':
	case 'M':  case 'N':  case 'O':  case 'P':
	case 'X':
	  /* These don't say anything we care about.  */
	  break;

	case ',':
	  if (found_zero && ! reg_allowed)
	    num_matching_alts++;

	  found_zero = reg_allowed = 0;
	  break;

	case '0':
	  found_zero = 1;
	  break;

	case '1':  case '2':  case '3':  case '4': case '5':
	case '6':  case '7':  case '8':  case '9':
	  /* Skip the balance of the matching constraint.  */
	  do
	    p++;
	  while (FUNC2 (*p));
	  len = 0;
	  break;

	default:
	  if (FUNC3 (c, p) == NO_REGS
	      && !FUNC1 (c, p))
	    break;
	  /* Fall through.  */
	case 'p':
	case 'g': case 'r':
	  reg_allowed = 1;
	  break;
	}
    }

  if (found_zero && ! reg_allowed)
    num_matching_alts++;

  return num_matching_alts;
}