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
 char* ASM_SWITCHES ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 char* as_flags ; 
 int /*<<< orphan*/  as_name ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char*,char*,char const*,char const*) ; 
 scalar_t__ FUNC3 (char const*) ; 

__attribute__((used)) static void
FUNC4 (const char * source, const char * dest)
{
  char * cmd;

  cmd = (char *) FUNC0 (FUNC3 (ASM_SWITCHES) + FUNC3 (as_flags)
			 + FUNC3 (source) + FUNC3 (dest) + 50);

  FUNC2 (cmd, "%s %s -o %s %s", ASM_SWITCHES, as_flags, dest, source);

  FUNC1 (as_name, cmd);
}