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
 int /*<<< orphan*/  FUNC0 (char*,char*,char*) ; 

__attribute__((used)) static void
FUNC1 (char *args, char *cmd_prefix)
{
  if (args)
    FUNC0 ("Garbage after \"%s\" command: `%s'", cmd_prefix, args);
}