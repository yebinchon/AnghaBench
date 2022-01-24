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
struct symlist {char* name; struct symlist* next; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 
 scalar_t__ wildcard ; 

__attribute__((used)) static bfd_boolean
FUNC2 (const char *name, struct symlist *list)
{
  struct symlist *tmp_list;

  if (wildcard)
    {
      for (tmp_list = list; tmp_list; tmp_list = tmp_list->next)
	if (*(tmp_list->name) != '!')
	  {
	    if (!FUNC0 (tmp_list->name, name, 0))
	      return TRUE;
	  }
	else
	  {
	    if (FUNC0 (tmp_list->name + 1, name, 0))
	      return TRUE;
	  }
    }
  else
    {
      for (tmp_list = list; tmp_list; tmp_list = tmp_list->next)
	if (FUNC1 (name, tmp_list->name) == 0)
	  return TRUE;
    }

  return FALSE;
}