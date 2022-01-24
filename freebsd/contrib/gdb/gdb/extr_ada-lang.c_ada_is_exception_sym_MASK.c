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
 scalar_t__ FUNC0 (char*,char*) ; 
 scalar_t__ LOC_BLOCK ; 
 scalar_t__ LOC_CONST ; 
 scalar_t__ LOC_TYPEDEF ; 
 scalar_t__ FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct symbol*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (struct symbol *sym)
{
  char *type_name = FUNC3 (FUNC2 (sym));

  return (FUNC1 (sym) != LOC_TYPEDEF
	  && FUNC1 (sym) != LOC_BLOCK
	  && FUNC1 (sym) != LOC_CONST
	  && type_name != NULL && FUNC0 (type_name, "exception"));
}