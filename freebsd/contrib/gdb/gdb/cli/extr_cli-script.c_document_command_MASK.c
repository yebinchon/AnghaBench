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
struct command_line {char* line; struct command_line* next; } ;
struct cmd_list_element {scalar_t__ class; char* doc; } ;

/* Variables and functions */
 scalar_t__ class_user ; 
 int /*<<< orphan*/  cmdlist ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct command_line**) ; 
 struct cmd_list_element* FUNC2 (char**,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int) ; 
 struct command_line* FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 scalar_t__ FUNC9 (int) ; 

void
FUNC10 (char *comname, int from_tty)
{
  struct command_line *doclines;
  struct cmd_list_element *c;
  char *tem = comname;
  char tmpbuf[128];

  FUNC7 (comname);

  c = FUNC2 (&tem, cmdlist, "", 0, 1);

  if (c->class != class_user)
    FUNC0 ("Command \"%s\" is built-in.", comname);

  FUNC4 (tmpbuf, "Type documentation for \"%s\".", comname);
  doclines = FUNC3 (tmpbuf, from_tty);

  if (c->doc)
    FUNC8 (c->doc);

  {
    struct command_line *cl1;
    int len = 0;

    for (cl1 = doclines; cl1; cl1 = cl1->next)
      len += FUNC6 (cl1->line) + 1;

    c->doc = (char *) FUNC9 (len + 1);
    *c->doc = 0;

    for (cl1 = doclines; cl1; cl1 = cl1->next)
      {
	FUNC5 (c->doc, cl1->line);
	if (cl1->next)
	  FUNC5 (c->doc, "\n");
      }
  }

  FUNC1 (&doclines);
}