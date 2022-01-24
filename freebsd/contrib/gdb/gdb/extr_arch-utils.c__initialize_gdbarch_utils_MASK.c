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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 struct cmd_list_element* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  class_support ; 
 int /*<<< orphan*/  endian_enum ; 
 int /*<<< orphan*/  FUNC2 (struct cmd_list_element*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  set_endian ; 
 int /*<<< orphan*/  set_endian_string ; 
 int /*<<< orphan*/  setlist ; 
 int /*<<< orphan*/  show_endian ; 
 int /*<<< orphan*/  showlist ; 

void
FUNC3 (void)
{
  struct cmd_list_element *c;
  c = FUNC1 ("endian", class_support,
			endian_enum, &set_endian_string,
			"Set endianness of target.",
			&setlist);
  FUNC2 (c, set_endian);
  /* Don't use set_from_show - need to print both auto/manual and
     current setting. */
  FUNC0 ("endian", class_support, show_endian,
	   "Show the current byte-order", &showlist);
}