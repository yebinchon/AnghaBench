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
struct linetable_entry {scalar_t__ pc; int line; } ;
struct linetable {int nitems; struct linetable_entry* item; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  VAR_DOMAIN ; 
 scalar_t__ FUNC0 (scalar_t__,char**,scalar_t__*,scalar_t__*) ; 
 scalar_t__ FUNC1 (struct symbol*,int) ; 
 struct symbol* FUNC2 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3 (struct linetable *linetable, int line_num,
			     int starting_line, int ind)
{
  int i, len;

  if (line_num <= 0 || linetable == NULL || ind >= linetable->nitems)
    return -1;
  len = linetable->nitems;

  if (ind >= 0)
    {
      CORE_ADDR start, end;

      if (FUNC0 (linetable->item[ind].pc,
				    (char **) NULL, &start, &end))
	{
	  while (ind < len && linetable->item[ind].pc < end)
	    ind += 1;
	}
      else
	ind += 1;
    }
  else
    ind = 0;

  i = ind;
  while (i < len)
    {
      int k;
      struct linetable_entry *item = &(linetable->item[i]);

      if (item->line >= line_num)
	{
	  char *func_name;
	  CORE_ADDR start, end;

	  func_name = NULL;
	  FUNC0 (item->pc, &func_name, &start, &end);

	  if (func_name != NULL && item->pc < end)
	    {
	      if (item->line == line_num)
		{
		  struct symbol *sym =
		    FUNC2 (func_name, VAR_DOMAIN);
		  if (FUNC1 (sym, starting_line))
		    return i;
		  else
		    {
		      while ((i + 1) < len && linetable->item[i + 1].pc < end)
			i += 1;
		    }
		}
	    }
	}
      i += 1;
    }

  return -1;
}