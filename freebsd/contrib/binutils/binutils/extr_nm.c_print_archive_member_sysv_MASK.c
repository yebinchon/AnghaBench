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
 char* FUNC0 (char*) ; 
 int print_width ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 scalar_t__ undefined_only ; 

__attribute__((used)) static void
FUNC2 (char *archive, const char *filename)
{
  if (undefined_only)
    FUNC1 (FUNC0("\n\nUndefined symbols from %s[%s]:\n\n"), archive, filename);
  else
    FUNC1 (FUNC0("\n\nSymbols from %s[%s]:\n\n"), archive, filename);
  if (print_width == 32)
    FUNC1 (FUNC0("\
Name                  Value   Class        Type         Size     Line  Section\n\n"));
  else
    FUNC1 (FUNC0("\
Name                  Value           Class        Type         Size             Line  Section\n\n"));
}