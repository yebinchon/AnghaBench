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
struct symtabs_and_lines {int dummy; } ;
struct symtab {int dummy; } ;

/* Variables and functions */
 struct symtabs_and_lines FUNC0 (char**,int,struct symtab*,int /*<<< orphan*/ ,char***,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  default_breakpoint_line ; 
 struct symtab* default_breakpoint_symtab ; 
 scalar_t__ default_breakpoint_valid ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

struct symtabs_and_lines
FUNC2 (char *string, int funfirstline)
{
  struct symtabs_and_lines sals;
  if (string == 0)
    FUNC1 ("Empty line specification.");
  if (default_breakpoint_valid)
    sals = FUNC0 (&string, funfirstline,
			  default_breakpoint_symtab,
			  default_breakpoint_line,
			  (char ***) NULL, NULL);
  else
    sals = FUNC0 (&string, funfirstline,
			  (struct symtab *) NULL, 0, (char ***) NULL, NULL);
  if (*string)
    FUNC1 ("Junk at end of line specification: %s", string);
  return sals;
}