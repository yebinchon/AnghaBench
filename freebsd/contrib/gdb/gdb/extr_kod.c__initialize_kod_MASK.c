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
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 struct cmd_list_element* FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct cmd_list_element*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kod_set_os ; 
 int /*<<< orphan*/  no_class ; 
 int /*<<< orphan*/  operating_system ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  showlist ; 
 int /*<<< orphan*/  var_string ; 

void
FUNC3 (void)
{
  struct cmd_list_element *c;

  c = FUNC0 ("os", no_class, var_string,
		   (char *) &operating_system,
		   "Set operating system",
		   &setlist);
  FUNC2 (c, kod_set_os);
  FUNC1 (c, &showlist);
}