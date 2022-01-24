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
struct cmd_list_element {char* prefixname; scalar_t__ type; char* name; struct cmd_list_element** prefixlist; int /*<<< orphan*/  abbrev_flag; struct cmd_list_element* next; } ;
struct cleanup {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,struct cmd_list_element*) ; 
 struct cleanup* FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ show_cmd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  uiout ; 

void
FUNC5 (struct cmd_list_element *list, int from_tty, char *prefix)
{
  struct cleanup *showlist_chain;

  showlist_chain = FUNC2 (uiout, "showlist");
  for (; list != NULL; list = list->next)
    {
      /* If we find a prefix, run its list, prefixing our output by its
         prefix (with "show " skipped).  */
      if (list->prefixlist && !list->abbrev_flag)
	{
	  struct cleanup *optionlist_chain
	    = FUNC2 (uiout, "optionlist");
	  FUNC3 (uiout, "prefix", list->prefixname + 5);
	  FUNC5 (*list->prefixlist, from_tty, list->prefixname + 5);
	  /* Close the tuple.  */
	  FUNC0 (optionlist_chain);
	}
      if (list->type == show_cmd)
	{
	  struct cleanup *option_chain
	    = FUNC2 (uiout, "option");
	  FUNC4 (uiout, prefix);
	  FUNC3 (uiout, "name", list->name);
	  FUNC4 (uiout, ":  ");
	  FUNC1 ((char *) NULL, from_tty, list);
          /* Close the tuple.  */
	  FUNC0 (option_chain);
	}
    }
  /* Close the tuple.  */
  FUNC0 (showlist_chain);
}