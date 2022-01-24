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
struct charset {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct charset*) ; 
 int /*<<< orphan*/  host_charset_name ; 
 struct charset* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct charset*,struct charset*) ; 
 int /*<<< orphan*/  target_charset_name ; 

__attribute__((used)) static void
FUNC3 (char *charset, int from_tty, struct cmd_list_element *c)
{
  struct charset *cs = FUNC1 (host_charset_name);
  FUNC0 (cs);
  /* CAREFUL: set the target charset here as well. */
  target_charset_name = host_charset_name;
  FUNC2 (cs, cs);
}