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
typedef  int /*<<< orphan*/  var_types ;
struct cmd_list_element {int type; void* var; int /*<<< orphan*/  var_type; } ;
typedef  enum command_class { ____Placeholder_command_class } command_class ;
typedef  enum cmd_types { ____Placeholder_cmd_types } cmd_types ;

/* Variables and functions */
 struct cmd_list_element* FUNC0 (char*,int,int /*<<< orphan*/ *,char*,struct cmd_list_element**) ; 
 int /*<<< orphan*/  empty_sfunc ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int set_cmd ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int show_cmd ; 

__attribute__((used)) static struct cmd_list_element *
FUNC3 (char *name,
		     enum cmd_types type,
		     enum command_class class,
		     var_types var_type,
		     void *var,
		     char *doc,
		     struct cmd_list_element **list)
{
  struct cmd_list_element *c = FUNC0 (name, class, NULL, doc, list);
  FUNC1 (type == set_cmd || type == show_cmd);
  c->type = type;
  c->var_type = var_type;
  c->var = var;
  /* This needs to be something besides NULL so that this isn't
     treated as a help class.  */
  FUNC2 (c, empty_sfunc);
  return c;
}