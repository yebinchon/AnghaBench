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
struct cmd_list_element {char const** enums; } ;
typedef  enum command_class { ____Placeholder_command_class } command_class ;

/* Variables and functions */
 struct cmd_list_element* FUNC0 (char*,int,int /*<<< orphan*/ ,char const**,char*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  var_enum ; 

struct cmd_list_element *
FUNC1 (char *name,
		  enum command_class class,
		  const char *enumlist[],
		  const char **var,
		  char *doc,
		  struct cmd_list_element **list)
{
  struct cmd_list_element *c
  = FUNC0 (name, class, var_enum, var, doc, list);
  c->enums = enumlist;

  return c;
}