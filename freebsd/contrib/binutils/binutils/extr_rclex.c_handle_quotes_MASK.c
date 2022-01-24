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
typedef  int rc_uint_type ;

/* Variables and functions */
 void* ESCAPE_B ; 
 int /*<<< orphan*/  ESCAPE_F ; 
 int /*<<< orphan*/  ESCAPE_N ; 
 int /*<<< orphan*/  ESCAPE_R ; 
 int /*<<< orphan*/  ESCAPE_T ; 
 int /*<<< orphan*/  ESCAPE_V ; 
 int FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char* FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  rc_lineno ; 
 char* rclex_tok ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static char *
FUNC5 (rc_uint_type *len)
{
  const char *input = rclex_tok;
  char *ret, *s;
  const char *t;
  int ch;
  int num_xdigits;

  ret = FUNC2 (FUNC4 (input) + 1);

  s = ret;
  t = input;
  if (*t == '"')
    ++t;
  while (*t != '\0')
    {
      if (*t == '\\')
	{
	  ++t;
	  switch (*t)
	    {
	    case '\0':
	      FUNC3 ("backslash at end of string");
	      break;

	    case '\"':
	      FUNC3 ("use \"\" to put \" in a string");
	      *s++ = '"';
	      ++t;
	      break;

	    case 'a':
	      *s++ = ESCAPE_B; /* Strange, but true...  */
	      ++t;
	      break;

	    case 'b':
	      *s++ = ESCAPE_B;
	      ++t;
	      break;

	    case 'f':
	      *s++ = ESCAPE_F;
	      ++t;
	      break;

	    case 'n':
	      *s++ = ESCAPE_N;
	      ++t;
	      break;

	    case 'r':
	      *s++ = ESCAPE_R;
	      ++t;
	      break;

	    case 't':
	      *s++ = ESCAPE_T;
	      ++t;
	      break;

	    case 'v':
	      *s++ = ESCAPE_V;
	      ++t;
	      break;

	    case '\\':
	      *s++ = *t++;
	      break;

	    case '0': case '1': case '2': case '3':
	    case '4': case '5': case '6': case '7':
	      ch = *t - '0';
	      ++t;
	      if (*t >= '0' && *t <= '7')
		{
		  ch = (ch << 3) | (*t - '0');
		  ++t;
		  if (*t >= '0' && *t <= '7')
		    {
		      ch = (ch << 3) | (*t - '0');
		      ++t;
		    }
		}
	      *s++ = ch;
	      break;

	    case 'x': case 'X':
	      ++t;
	      ch = 0;
	      /* We only handle single byte chars here.  Make sure
		 we finish an escape sequence like "/xB0ABC" after
		 the first two digits.  */
              num_xdigits = 2;
 	      while (num_xdigits--)
		{
		  if (*t >= '0' && *t <= '9')
		    ch = (ch << 4) | (*t - '0');
		  else if (*t >= 'a' && *t <= 'f')
		    ch = (ch << 4) | (*t - 'a' + 10);
		  else if (*t >= 'A' && *t <= 'F')
		    ch = (ch << 4) | (*t - 'A' + 10);
		  else
		    break;
		  ++t;
		}
	      *s++ = ch;
	      break;

	    default:
	      FUNC3 ("unrecognized escape sequence");
	      *s++ = '\\';
	      *s++ = *t++;
	      break;
	    }
	}
      else if (*t != '"')
	*s++ = *t++;
      else if (t[1] == '\0')
	break;
      else if (t[1] == '"')
	{
	  *s++ = '"';
	  t += 2;
	}
      else
	{
	  FUNC3 ("unexpected character after '\"'");
	  ++t;
	  FUNC1 (FUNC0 (*t));
	  while (FUNC0 (*t))
	    {
	      if ((*t) == '\n')
		++rc_lineno;
	      ++t;
	    }
	  if (*t == '\0')
	    break;
	  FUNC1 (*t == '"');
	  ++t;
	}
    }

  *s = '\0';

  *len = s - ret;

  return ret;
}