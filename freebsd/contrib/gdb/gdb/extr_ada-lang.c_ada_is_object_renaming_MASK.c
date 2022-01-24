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
struct symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2 (struct symbol *sym)
{
  const char *renaming_type = FUNC1 (FUNC0 (sym));
  return renaming_type != NULL
    && (renaming_type[2] == '\0' || renaming_type[2] == '_');
}