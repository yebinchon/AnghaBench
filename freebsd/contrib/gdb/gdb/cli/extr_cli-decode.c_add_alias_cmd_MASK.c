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
struct cmd_list_element {int abbrev_flag; struct cmd_list_element* cmd_pointer; int /*<<< orphan*/  allow_unknown; int /*<<< orphan*/  prefixname; int /*<<< orphan*/  prefixlist; int /*<<< orphan*/  function; int /*<<< orphan*/  func; int /*<<< orphan*/  doc; } ;
typedef  enum command_class { ____Placeholder_command_class } command_class ;

/* Variables and functions */
 struct cmd_list_element* FUNC0 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct cmd_list_element**) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct cmd_list_element**) ; 
 struct cmd_list_element* FUNC3 (char**,struct cmd_list_element*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 

struct cmd_list_element *
FUNC6 (char *name, char *oldname, enum command_class class,
	       int abbrev_flag, struct cmd_list_element **list)
{
  /* Must do this since lookup_cmd tries to side-effect its first arg */
  char *copied_name;
  struct cmd_list_element *old;
  struct cmd_list_element *c;
  copied_name = (char *) FUNC1 (FUNC5 (oldname) + 1);
  FUNC4 (copied_name, oldname);
  old = FUNC3 (&copied_name, *list, "", 1, 1);

  if (old == 0)
    {
      FUNC2 (name, list);
      return 0;
    }

  c = FUNC0 (name, class, NULL, old->doc, list);
  /* NOTE: Both FUNC and all the FUNCTIONs need to be copied.  */
  c->func = old->func;
  c->function = old->function;
  c->prefixlist = old->prefixlist;
  c->prefixname = old->prefixname;
  c->allow_unknown = old->allow_unknown;
  c->abbrev_flag = abbrev_flag;
  c->cmd_pointer = old;
  return c;
}