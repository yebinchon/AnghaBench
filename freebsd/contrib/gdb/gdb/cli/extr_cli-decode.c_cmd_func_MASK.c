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
struct cmd_list_element {int /*<<< orphan*/  (* func ) (struct cmd_list_element*,char*,int) ;} ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct cmd_list_element*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_list_element*,char*,int) ; 

void
FUNC3 (struct cmd_list_element *cmd, char *args, int from_tty)
{
  if (FUNC0 (cmd))
    (*cmd->func) (cmd, args, from_tty);
  else
    FUNC1 ("Invalid command");
}