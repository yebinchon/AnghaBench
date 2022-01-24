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
 char* FUNC0 (char const*,char*,int) ; 
 char* program_name ; 
 char* FUNC1 (char const*) ; 

__attribute__((used)) static char *
FUNC2 (const char *prog_name)
{
  char *cmd;
  char *dash, *slash, *cp;

  dash = NULL;
  slash = NULL;
  for (cp = program_name; *cp != '\0'; ++cp)
    {
      if (*cp == '-')
	dash = cp;
      if (
#if defined(__DJGPP__) || defined (__CYGWIN__) || defined(__WIN32__)
	  *cp == ':' || *cp == '\\' ||
#endif
	  *cp == '/')
	{
	  slash = cp;
	  dash = NULL;
	}
    }

  cmd = NULL;

  if (dash != NULL)
    {
      /* First, try looking for a prefixed PROG_NAME in the
         PROGRAM_NAME directory, with the same prefix as PROGRAM_NAME.  */
      cmd = FUNC0 (prog_name, program_name, dash - program_name + 1);
    }

  if (slash != NULL && cmd == NULL)
    {
      /* Next, try looking for a PROG_NAME in the same directory as
         that of this program.  */
      cmd = FUNC0 (prog_name, program_name, slash - program_name + 1);
    }

  if (cmd == NULL)
    {
      /* Just return PROG_NAME as is.  */
      cmd = FUNC1 (prog_name);
    }

  return cmd;
}