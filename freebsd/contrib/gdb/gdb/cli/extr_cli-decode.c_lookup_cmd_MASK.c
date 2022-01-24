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
struct cmd_list_element {int allow_unknown; char* prefixname; char* name; struct cmd_list_element** prefixlist; struct cmd_list_element* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 
 scalar_t__ FUNC2 (char) ; 
 struct cmd_list_element* FUNC3 (char**,struct cmd_list_element*,struct cmd_list_element**,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 

struct cmd_list_element *
FUNC9 (char **line, struct cmd_list_element *list, char *cmdtype,
	    int allow_unknown, int ignore_help_classes)
{
  struct cmd_list_element *last_list = 0;
  struct cmd_list_element *c =
  FUNC3 (line, list, &last_list, ignore_help_classes);

  /* Note: Do not remove trailing whitespace here because this
     would be wrong for complete_command.  Jim Kingdon  */

  if (!c)
    {
      if (!allow_unknown)
	{
	  if (!*line)
	    FUNC1 ("Lack of needed %scommand", cmdtype);
	  else
	    {
	      char *p = *line, *q;

	      while (FUNC2 (*p) || *p == '-')
		p++;

	      q = (char *) FUNC0 (p - *line + 1);
	      FUNC7 (q, *line, p - *line);
	      q[p - *line] = '\0';
	      FUNC8 (cmdtype, q);
	    }
	}
      else
	return 0;
    }
  else if (c == (struct cmd_list_element *) -1)
    {
      /* Ambigous.  Local values should be off prefixlist or called
         values.  */
      int local_allow_unknown = (last_list ? last_list->allow_unknown :
				 allow_unknown);
      char *local_cmdtype = last_list ? last_list->prefixname : cmdtype;
      struct cmd_list_element *local_list =
      (last_list ? *(last_list->prefixlist) : list);

      if (local_allow_unknown < 0)
	{
	  if (last_list)
	    return last_list;	/* Found something.  */
	  else
	    return 0;		/* Found nothing.  */
	}
      else
	{
	  /* Report as error.  */
	  int amb_len;
	  char ambbuf[100];

	  for (amb_len = 0;
	       ((*line)[amb_len] && (*line)[amb_len] != ' '
		&& (*line)[amb_len] != '\t');
	       amb_len++)
	    ;

	  ambbuf[0] = 0;
	  for (c = local_list; c; c = c->next)
	    if (!FUNC6 (*line, c->name, amb_len))
	      {
		if (FUNC5 (ambbuf) + FUNC5 (c->name) + 6 < (int) sizeof ambbuf)
		  {
		    if (FUNC5 (ambbuf))
		      FUNC4 (ambbuf, ", ");
		    FUNC4 (ambbuf, c->name);
		  }
		else
		  {
		    FUNC4 (ambbuf, "..");
		    break;
		  }
	      }
	  FUNC1 ("Ambiguous %scommand \"%s\": %s.", local_cmdtype,
		 *line, ambbuf);
	  return 0;		/* lint */
	}
    }
  else
    {
      /* We've got something.  It may still not be what the caller
         wants (if this command *needs* a subcommand).  */
      while (**line == ' ' || **line == '\t')
	(*line)++;

      if (c->prefixlist && **line && !c->allow_unknown)
	FUNC8 (c->prefixname, *line);

      /* Seems to be what he wants.  Return it.  */
      return c;
    }
  return 0;
}