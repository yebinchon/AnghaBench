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
typedef  enum target_signal { ____Placeholder_target_signal } target_signal ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__* signal_print ; 
 scalar_t__* signal_program ; 
 scalar_t__* signal_stop ; 
 int FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 char* FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4 (enum target_signal oursig)
{
  char *name = FUNC2 (oursig);
  int name_padding = 13 - FUNC1 (name);

  if (name_padding <= 0)
    name_padding = 0;

  FUNC0 ("%s", name);
  FUNC0 ("%*.*s ", name_padding, name_padding, "                 ");
  FUNC0 ("%s\t", signal_stop[oursig] ? "Yes" : "No");
  FUNC0 ("%s\t", signal_print[oursig] ? "Yes" : "No");
  FUNC0 ("%s\t\t", signal_program[oursig] ? "Yes" : "No");
  FUNC0 ("%s\n", FUNC3 (oursig));
}