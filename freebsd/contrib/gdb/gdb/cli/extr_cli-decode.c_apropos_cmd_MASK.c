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
struct ui_file {int dummy; } ;
struct re_pattern_buffer {int dummy; } ;
struct cmd_list_element {char* prefixname; struct cmd_list_element** prefixlist; int /*<<< orphan*/ * doc; int /*<<< orphan*/ * name; struct cmd_list_element* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,int /*<<< orphan*/ *) ; 
 int FUNC3 (struct re_pattern_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void 
FUNC5 (struct ui_file *stream, struct cmd_list_element *commandlist,
			 struct re_pattern_buffer *regex, char *prefix)
{
  struct cmd_list_element *c;
  int returnvalue=1; /*Needed to avoid double printing*/
  /* Walk through the commands */
  for (c=commandlist;c;c=c->next)
    {
      if (c->name != NULL)
	{
	  /* Try to match against the name*/
	  returnvalue=FUNC3(regex,c->name,FUNC4(c->name),0,FUNC4(c->name),NULL);
	  if (returnvalue >= 0)
	    {
	      /* Stolen from help_cmd_list. We don't directly use
	       * help_cmd_list because it doesn't let us print out
	       * single commands
	       */
	      FUNC0 (stream, "%s%s -- ", prefix, c->name);
	      FUNC2 (stream, c->doc);
	      FUNC1 ("\n", stream);
	      returnvalue=0; /*Set this so we don't print it again.*/
	    }
	}
      if (c->doc != NULL && returnvalue != 0)
	{
	  /* Try to match against documentation */
	  if (FUNC3(regex,c->doc,FUNC4(c->doc),0,FUNC4(c->doc),NULL) >=0)
	    {
	      /* Stolen from help_cmd_list. We don't directly use
	       * help_cmd_list because it doesn't let us print out
	       * single commands
	       */
	      FUNC0 (stream, "%s%s -- ", prefix, c->name);
	      FUNC2 (stream, c->doc);
	      FUNC1 ("\n", stream);
	    }
	}
      /* Check if this command has subcommands */
      if (c->prefixlist != NULL)
	{
	  /* Recursively call ourselves on the subcommand list,
	     passing the right prefix in.
	  */
	  FUNC5 (stream,*c->prefixlist,regex,c->prefixname);
	}
    }
}