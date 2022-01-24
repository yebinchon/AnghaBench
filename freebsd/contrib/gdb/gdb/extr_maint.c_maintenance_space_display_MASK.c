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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC2 (char *args, int from_tty)
{
  extern int display_space;

  if (args == NULL || *args == '\0')
    FUNC0 ("\"maintenance space\" takes a numeric argument.\n");
  else
    display_space = FUNC1 (args, NULL, 10);
}