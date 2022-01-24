#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ data_size; scalar_t__ data_base; scalar_t__ text_size; scalar_t__ text_base; scalar_t__ linkage_ptr; } ;
struct so_list {scalar_t__ loaded; struct so_list* next; TYPE_1__ pa64_solib_desc; int /*<<< orphan*/ * objfile; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/ * exec_bfd ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 struct so_list* so_list_head ; 

__attribute__((used)) static void
FUNC2 (char *ignore, int from_tty)
{
  struct so_list *so_list = so_list_head;

  if (exec_bfd == NULL)
    {
      FUNC1 ("No executable file.\n");
      return;
    }

  if (so_list == NULL)
    {
      FUNC1 ("No shared libraries loaded at this time.\n");
      return;
    }

  FUNC1 ("Shared Object Libraries\n");
  FUNC1 ("   %-19s%-19s%-19s%-19s\n",
		     "  text start", "   text end",
		     "  data start", "   data end");
  while (so_list)
    {
      unsigned int flags;

      FUNC1 ("%s", so_list->name);
      if (so_list->objfile == NULL)
	FUNC1 ("  (symbols not loaded)");
      if (so_list->loaded == 0)
	FUNC1 ("  (shared library unloaded)");
      FUNC1 ("  %-18s",
	FUNC0 (so_list->pa64_solib_desc.linkage_ptr,
				 "016l"));
      FUNC1 ("\n");
      FUNC1 ("%-18s",
	FUNC0 (so_list->pa64_solib_desc.text_base,
				 "016l"));
      FUNC1 (" %-18s",
	FUNC0 ((so_list->pa64_solib_desc.text_base
				  + so_list->pa64_solib_desc.text_size),
				 "016l"));
      FUNC1 (" %-18s",
	FUNC0 (so_list->pa64_solib_desc.data_base,
				 "016l"));
      FUNC1 (" %-18s\n",
	FUNC0 ((so_list->pa64_solib_desc.data_base
				  + so_list->pa64_solib_desc.data_size),
				 "016l"));
      so_list = so_list->next;
    }
}