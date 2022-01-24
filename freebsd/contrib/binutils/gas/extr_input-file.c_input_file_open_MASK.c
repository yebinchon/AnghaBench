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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FOPEN_RT ; 
 scalar_t__ FUNC0 (char) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/ * f_in ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (char*,int,int /*<<< orphan*/ *) ; 
 char* file_name ; 
 int /*<<< orphan*/ * FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int preprocess ; 
 int /*<<< orphan*/ * stdin ; 
 int /*<<< orphan*/  FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void
FUNC13 (char *filename, /* "" means use stdin. Must not be 0.  */
		 int pre)
{
  int c;
  char buf[80];

  preprocess = pre;

  FUNC3 (filename != 0);	/* Filename may not be NULL.  */
  if (filename[0])
    {
      f_in = FUNC7 (filename, FOPEN_RT);
      file_name = filename;
    }
  else
    {
      /* Use stdin for the input file.  */
      f_in = stdin;
      /* For error messages.  */
      file_name = FUNC1("{standard input}");
    }

  if (f_in == NULL)
    {
      FUNC2 (FUNC1("can't open %s for reading: %s"),
	      file_name, FUNC12 (errno));
      return;
    }

  c = FUNC8 (f_in);

  if (FUNC5 (f_in))
    {
      FUNC2 (FUNC1("can't read from %s: %s"),
	      file_name, FUNC12 (errno));

      FUNC4 (f_in);
      f_in = NULL;
      return;
    }

  if (c == '#')
    {
      /* Begins with comment, may not want to preprocess.  */
      c = FUNC8 (f_in);
      if (c == 'N')
	{
	  if (FUNC6 (buf, sizeof (buf), f_in)
	      && !FUNC10 (buf, "O_APP", 5) && FUNC0 (buf[5]))
	    preprocess = 0;
	  if (!FUNC9 (buf, '\n'))
	    FUNC11 ('#', f_in);	/* It was longer.  */
	  else
	    FUNC11 ('\n', f_in);
	}
      else if (c == 'A')
	{
	  if (FUNC6 (buf, sizeof (buf), f_in)
	      && !FUNC10 (buf, "PP", 2) && FUNC0 (buf[2]))
	    preprocess = 1;
	  if (!FUNC9 (buf, '\n'))
	    FUNC11 ('#', f_in);
	  else
	    FUNC11 ('\n', f_in);
	}
      else if (c == '\n')
	FUNC11 ('\n', f_in);
      else
	FUNC11 ('#', f_in);
    }
  else
    FUNC11 (c, f_in);
}