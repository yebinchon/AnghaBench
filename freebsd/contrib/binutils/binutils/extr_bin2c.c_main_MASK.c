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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  LC_CTYPE ; 
 int /*<<< orphan*/  LC_MESSAGES ; 
 int /*<<< orphan*/  LOCALEDIR ; 
 int /*<<< orphan*/  PACKAGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,...) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * stderr ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/ * stdout ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

int
FUNC11 (int argc, char *argv[])
{
  int c;
  int i;

#if defined (HAVE_SETLOCALE) && defined (HAVE_LC_MESSAGES)
  setlocale (LC_MESSAGES, "");
#endif
#if defined (HAVE_SETLOCALE)
  setlocale (LC_CTYPE, "");
#endif
  FUNC2 (PACKAGE, LOCALEDIR);
  FUNC10 (PACKAGE);

  if (argc != 1)
    {
      int ishelp = 0;
      int isvers = 0;
      FILE *stream;

      if (argc == 2 && argv[1][0] == '-')
	{
	  const char *opt = &argv[1][1];
	  if (*opt == '-')
	    ++opt;
	  ishelp = *opt == 'h' || *opt == 'H';
	  isvers = *opt == 'v' || *opt == 'V';
	}

      if (isvers)
	FUNC7 ("bin2c");

      stream = ishelp ? stdout : stderr;
      FUNC5 (stream, FUNC1("Usage: %s < input_file > output_file\n"), argv[0]);
      FUNC5 (stream, FUNC1("Prints bytes from stdin in hex format.\n"));
      FUNC3 (!ishelp);
    }

  FUNC0 (FUNC4 (stdin));

  i = 0;
  while ((c = FUNC6 (stdin)) != EOF)
    {
      FUNC8 ("0x%02x,", c);
      if (++i == 16)
	{
	  FUNC8 ("\n");
	  i = 0;
	}
    }
  if (i != 0)
    FUNC8 ("\n");

  FUNC3 (0);
}