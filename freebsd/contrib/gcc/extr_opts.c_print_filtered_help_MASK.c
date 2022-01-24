#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {unsigned int flags; char* opt_text; char* help; } ;

/* Variables and functions */
 unsigned int CL_COMMON ; 
 unsigned int CL_TARGET ; 
 int CL_UNDOCUMENTED ; 
 char* FUNC0 (char const*) ; 
 TYPE_1__* cl_options ; 
 unsigned int cl_options_count ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC2 (char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 
 char* FUNC4 (char const*,char) ; 
 unsigned int FUNC5 (char const*) ; 
 char* undocumented_msg ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*,unsigned int) ; 
 char* FUNC7 (unsigned int) ; 

__attribute__((used)) static void
FUNC8 (unsigned int flag)
{
  unsigned int i, len, filter, indent = 0;
  bool duplicates = false;
  const char *help, *opt, *tab;
  static char *printed;

  if (flag == CL_COMMON || flag == CL_TARGET)
    {
      filter = flag;
      if (!printed)
	printed = FUNC7 (cl_options_count);
      FUNC1 (printed, 0, cl_options_count);
    }
  else
    {
      /* Don't print COMMON options twice.  */
      filter = flag | CL_COMMON;

      for (i = 0; i < cl_options_count; i++)
	{
	  if ((cl_options[i].flags & filter) != flag)
	    continue;

	  /* Skip help for internal switches.  */
	  if (cl_options[i].flags & CL_UNDOCUMENTED)
	    continue;

	  /* Skip switches that have already been printed, mark them to be
	     listed later.  */
	  if (printed[i])
	    {
	      duplicates = true;
	      indent = FUNC2 (cl_options[i].opt_text, indent);
	    }
	}

      if (duplicates)
	{
	  FUNC3 ('\n');
	  FUNC3 ('\n');
	}
    }

  for (i = 0; i < cl_options_count; i++)
    {
      if ((cl_options[i].flags & filter) != flag)
	continue;

      /* Skip help for internal switches.  */
      if (cl_options[i].flags & CL_UNDOCUMENTED)
	continue;

      /* Skip switches that have already been printed.  */
      if (printed[i])
	continue;

      printed[i] = true;

      help = cl_options[i].help;
      if (!help)
	help = undocumented_msg;

      /* Get the translation.  */
      help = FUNC0(help);

      tab = FUNC4 (help, '\t');
      if (tab)
	{
	  len = tab - help;
	  opt = help;
	  help = tab + 1;
	}
      else
	{
	  opt = cl_options[i].opt_text;
	  len = FUNC5 (opt);
	}

      FUNC6 (help, opt, len);
    }

  FUNC3 ('\n');
}