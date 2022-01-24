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
struct symlist {int dummy; } ;
typedef  int off_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FOPEN_RT ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct symlist**) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (char*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char const*,unsigned int) ; 
 int status ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 char* FUNC12 (int) ; 

__attribute__((used)) static void
FUNC13 (const char *filename, struct symlist **list)
{
  off_t  size;
  FILE * f;
  char * line;
  char * buffer;
  unsigned int line_count;

  size = FUNC9 (filename);
  if (size == 0)
    {
      status = 1;
      return;
    }

  buffer = FUNC12 (size + 2);
  f = FUNC7 (filename, FOPEN_RT);
  if (f == NULL)
    FUNC4 (FUNC2("cannot open '%s': %s"), filename, FUNC11 (errno));

  if (FUNC8 (buffer, 1, size, f) == 0 || FUNC6 (f))
    FUNC4 (FUNC2("%s: fread failed"), filename);

  FUNC5 (f);
  buffer [size] = '\n';
  buffer [size + 1] = '\0';

  line_count = 1;

  for (line = buffer; * line != '\0'; line ++)
    {
      char * eol;
      char * name;
      char * name_end;
      int finished = FALSE;

      for (eol = line;; eol ++)
	{
	  switch (* eol)
	    {
	    case '\n':
	      * eol = '\0';
	      /* Cope with \n\r.  */
	      if (eol[1] == '\r')
		++ eol;
	      finished = TRUE;
	      break;

	    case '\r':
	      * eol = '\0';
	      /* Cope with \r\n.  */
	      if (eol[1] == '\n')
		++ eol;
	      finished = TRUE;
	      break;

	    case 0:
	      finished = TRUE;
	      break;

	    case '#':
	      /* Line comment, Terminate the line here, in case a
		 name is present and then allow the rest of the
		 loop to find the real end of the line.  */
	      * eol = '\0';
	      break;

	    default:
	      break;
	    }

	  if (finished)
	    break;
	}

      /* A name may now exist somewhere between 'line' and 'eol'.
	 Strip off leading whitespace and trailing whitespace,
	 then add it to the list.  */
      for (name = line; FUNC1 (* name); name ++)
	;
      for (name_end = name;
	   (! FUNC1 (* name_end))
	   && (! FUNC0 (* name_end));
	   name_end ++)
	;

      if (! FUNC0 (* name_end))
	{
	  char * extra;

	  for (extra = name_end + 1; FUNC1 (* extra); extra ++)
	    ;

	  if (! FUNC0 (* extra))
	    FUNC10 (FUNC2("%s:%d: Ignoring rubbish found on this line"),
		       filename, line_count);
	}

      * name_end = '\0';

      if (name_end > name)
	FUNC3 (name, list);

      /* Advance line pointer to end of line.  The 'eol ++' in the for
	 loop above will then advance us to the start of the next line.  */
      line = eol;
      line_count ++;
    }
}