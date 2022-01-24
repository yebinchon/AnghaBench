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
struct command_line {int body_count; struct command_line* line; struct command_line* next; struct command_line** body_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct command_line*) ; 

void
FUNC1 (struct command_line **lptr)
{
  struct command_line *l = *lptr;
  struct command_line *next;
  struct command_line **blist;
  int i;

  while (l)
    {
      if (l->body_count > 0)
	{
	  blist = l->body_list;
	  for (i = 0; i < l->body_count; i++, blist++)
	    FUNC1 (blist);
	}
      next = l->next;
      FUNC0 (l->line);
      FUNC0 (l);
      l = next;
    }
  *lptr = NULL;
}