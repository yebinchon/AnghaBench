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
 unsigned int CL_COMMON ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char const*) ; 
 int columns ; 
 char** lang_names ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void
FUNC8 (void)
{
  size_t i;
  const char *p;

  FUNC0 (p, "COLUMNS");
  if (p)
    {
      int value = FUNC2 (p);
      if (value > 0)
	columns = value;
    }

  FUNC7 (FUNC1("The following options are language-independent:\n"));

  FUNC3 (CL_COMMON);
  FUNC4 ();

  for (i = 0; lang_names[i]; i++)
    {
      FUNC6 (FUNC1("The %s front end recognizes the following options:\n\n"),
	      lang_names[i]);
      FUNC3 (1U << i);
    }
  FUNC5 ();
}