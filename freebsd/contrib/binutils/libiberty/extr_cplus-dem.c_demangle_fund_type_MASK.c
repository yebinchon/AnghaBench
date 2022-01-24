#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ type_kind_t ;
struct work_stuff {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  b; } ;
typedef  TYPE_1__ string ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  INTBUF_SIZE ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  PRINT_ANSI_QUALIFIERS ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct work_stuff*,char const**,TYPE_1__*) ; 
 char* FUNC5 (char const) ; 
 int FUNC6 (struct work_stuff*,char const**,TYPE_1__*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int FUNC8 (struct work_stuff*) ; 
 int /*<<< orphan*/  FUNC9 (struct work_stuff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 int /*<<< orphan*/  FUNC18 (char*,char const*,int) ; 
 scalar_t__ tk_bool ; 
 scalar_t__ tk_char ; 
 scalar_t__ tk_integral ; 
 scalar_t__ tk_real ; 

__attribute__((used)) static int
FUNC19 (struct work_stuff *work,
                    const char **mangled, string *result)
{
  int done = 0;
  int success = 1;
  char buf[INTBUF_SIZE + 5 /* 'int%u_t' */];
  unsigned int dec = 0;
  type_kind_t tk = tk_integral;

  /* First pick off any type qualifiers.  There can be more than one.  */

  while (!done)
    {
      switch (**mangled)
	{
	case 'C':
	case 'V':
	case 'u':
	  if (PRINT_ANSI_QUALIFIERS)
	    {
              if (!FUNC3 (result))
                FUNC16 (result, " ");
	      FUNC16 (result, FUNC5 (**mangled));
	    }
	  (*mangled)++;
	  break;
	case 'U':
	  (*mangled)++;
	  FUNC0 (result);
	  FUNC12 (result, "unsigned");
	  break;
	case 'S': /* signed char only */
	  (*mangled)++;
	  FUNC0 (result);
	  FUNC12 (result, "signed");
	  break;
	case 'J':
	  (*mangled)++;
	  FUNC0 (result);
	  FUNC12 (result, "__complex");
	  break;
	default:
	  done = 1;
	  break;
	}
    }

  /* Now pick off the fundamental type.  There can be only one.  */

  switch (**mangled)
    {
    case '\0':
    case '_':
      break;
    case 'v':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "void");
      break;
    case 'x':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "long long");
      break;
    case 'l':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "long");
      break;
    case 'i':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "int");
      break;
    case 's':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "short");
      break;
    case 'b':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "bool");
      tk = tk_bool;
      break;
    case 'c':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "char");
      tk = tk_char;
      break;
    case 'w':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "wchar_t");
      tk = tk_char;
      break;
    case 'r':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "long double");
      tk = tk_real;
      break;
    case 'd':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "double");
      tk = tk_real;
      break;
    case 'f':
      (*mangled)++;
      FUNC0 (result);
      FUNC12 (result, "float");
      tk = tk_real;
      break;
    case 'G':
      (*mangled)++;
      if (!FUNC1 ((unsigned char)**mangled))
	{
	  success = 0;
	  break;
	}
    case 'I':
      (*mangled)++;
      if (**mangled == '_')
	{
	  int i;
	  (*mangled)++;
	  for (i = 0;
	       i < (long) sizeof (buf) - 1 && **mangled && **mangled != '_';
	       (*mangled)++, i++)
	    buf[i] = **mangled;
	  if (**mangled != '_')
	    {
	      success = 0;
	      break;
	    }
	  buf[i] = '\0';
	  (*mangled)++;
	}
      else
	{
	  FUNC18 (buf, *mangled, 2);
	  buf[2] = '\0';
	  *mangled += FUNC7 (FUNC17 (*mangled), 2);
	}
      FUNC11 (buf, "%x", &dec);
      FUNC10 (buf, "int%u_t", dec);
      FUNC0 (result);
      FUNC12 (result, buf);
      break;

      /* fall through */
      /* An explicit type, such as "6mytype" or "7integer" */
    case '0':
    case '1':
    case '2':
    case '3':
    case '4':
    case '5':
    case '6':
    case '7':
    case '8':
    case '9':
      {
        int bindex = FUNC8 (work);
        string btype;
        FUNC15 (&btype);
        if (FUNC4 (work, mangled, &btype)) {
          FUNC9 (work, btype.b, FUNC2 (&btype), bindex);
          FUNC0 (result);
          FUNC13 (result, &btype);
        }
        else
          success = 0;
        FUNC14 (&btype);
        break;
      }
    case 't':
      {
        string btype;
        FUNC15 (&btype);
        success = FUNC6 (work, mangled, &btype, 0, 1, 1);
        FUNC13 (result, &btype);
        FUNC14 (&btype);
        break;
      }
    default:
      success = 0;
      break;
    }

  return success ? ((int) tk) : 0;
}