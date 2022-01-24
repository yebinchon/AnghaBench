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
struct linetable_entry {int line; scalar_t__ pc; } ;
struct linetable {int nitems; struct linetable_entry* item; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int INT_MAX ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char**,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct symbol*,int) ; 
 struct symbol* FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (struct linetable *linetable, int line_num)
{
  int i, len, best;

  if (line_num <= 0 || linetable == NULL || linetable->nitems == 0)
    return -1;
  len = linetable->nitems;

  i = 0;
  best = INT_MAX;
  while (i < len)
    {
      int k;
      struct linetable_entry *item = &(linetable->item[i]);

      if (item->line >= line_num && item->line < best)
	{
	  char *func_name;
	  CORE_ADDR start, end;

	  func_name = NULL;
	  FUNC0 (item->pc, &func_name, &start, &end);

	  if (func_name != NULL && item->pc < end)
	    {
	      if (item->line == line_num)
		return line_num;
	      else
		{
		  struct symbol *sym =
		    FUNC2 (func_name, VAR_DOMAIN);
		  if (FUNC1 (sym, line_num))
		    best = item->line;
		  else
		    {
		      do
			i += 1;
		      while (i < len && linetable->item[i].pc < end);
		      continue;
		    }
		}
	    }
	}

      i += 1;
    }

  return (best == INT_MAX) ? -1 : best;
}