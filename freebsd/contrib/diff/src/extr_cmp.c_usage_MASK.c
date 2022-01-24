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
 char* FUNC0 (char const* const) ; 
 char** option_help_msgid ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 char* program_name ; 

__attribute__((used)) static void
FUNC2 (void)
{
  char const * const *p;

  FUNC1 (FUNC0("Usage: %s [OPTION]... FILE1 [FILE2 [SKIP1 [SKIP2]]]\n"),
	  program_name);
  FUNC1 ("%s\n\n", FUNC0("Compare two files byte by byte."));
  for (p = option_help_msgid;  *p;  p++)
    FUNC1 ("  %s\n", FUNC0(*p));
  FUNC1 ("\n%s\n%s\n\n%s\n%s\n\n%s\n",
	  FUNC0("SKIP1 and SKIP2 are the number of bytes to skip in each file."),
	  FUNC0("SKIP values may be followed by the following multiplicative suffixes:\n\
kB 1000, K 1024, MB 1,000,000, M 1,048,576,\n\
GB 1,000,000,000, G 1,073,741,824, and so on for T, P, E, Z, Y."),
	  FUNC0("If a FILE is `-' or missing, read standard input."),
	  FUNC0("Exit status is 0 if inputs are the same, 1 if different, 2 if trouble."),
	  FUNC0("Report bugs to <bug-gnu-utils@gnu.org>."));
}