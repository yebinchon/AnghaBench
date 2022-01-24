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
struct varinfo {scalar_t__ stack; char* file; scalar_t__ addr; unsigned int line; int /*<<< orphan*/ * sec; int /*<<< orphan*/ * name; struct varinfo* prev_var; } ;
struct comp_unit {struct varinfo* variable_table; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  asymbol ;
typedef  int /*<<< orphan*/  asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (struct comp_unit *unit,
				 asymbol *sym,
				 bfd_vma addr,
				 const char **filename_ptr,
				 unsigned int *linenumber_ptr)
{
  const char *name = FUNC0 (sym);
  asection *sec = FUNC1 (sym);
  struct varinfo* each;

  for (each = unit->variable_table; each; each = each->prev_var)
    if (each->stack == 0
	&& each->file != NULL
	&& each->name != NULL
	&& each->addr == addr
	&& (!each->sec || each->sec == sec)
	&& FUNC2 (name, each->name) == 0)
      break;

  if (each)
    {
      each->sec = sec;
      *filename_ptr = each->file;
      *linenumber_ptr = each->line;
      return TRUE;
    }
  else
    return FALSE;
}