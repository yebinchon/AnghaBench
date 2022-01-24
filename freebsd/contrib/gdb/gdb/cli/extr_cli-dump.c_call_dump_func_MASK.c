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
struct dump_context {int /*<<< orphan*/  mode; int /*<<< orphan*/  (* func ) (char*,int /*<<< orphan*/ ) ;} ;
struct cmd_list_element {int dummy; } ;

/* Variables and functions */
 struct dump_context* FUNC0 (struct cmd_list_element*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (struct cmd_list_element *c, char *args, int from_tty)
{
  struct dump_context *d = FUNC0 (c);
  d->func (args, d->mode);
}