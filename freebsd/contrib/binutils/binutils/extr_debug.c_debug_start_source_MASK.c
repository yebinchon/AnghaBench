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
struct debug_handle {struct debug_file* current_file; TYPE_1__* current_unit; } ;
struct debug_file {char const* filename; struct debug_file* next; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_2__ {struct debug_file* files; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct debug_file*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char const*,char const*) ; 
 scalar_t__ FUNC4 (int) ; 

bfd_boolean
FUNC5 (void *handle, const char *name)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_file *f, **pf;

  if (name == NULL)
    name = "";

  if (info->current_unit == NULL)
    {
      FUNC1 (FUNC0("debug_start_source: no debug_set_filename call"));
      return FALSE;
    }

  for (f = info->current_unit->files; f != NULL; f = f->next)
    {
      if (f->filename[0] == name[0]
	  && f->filename[1] == name[1]
	  && FUNC3 (f->filename, name) == 0)
	{
	  info->current_file = f;
	  return TRUE;
	}
    }

  f = (struct debug_file *) FUNC4 (sizeof *f);
  FUNC2 (f, 0, sizeof *f);

  f->filename = name;

  for (pf = &info->current_file->next;
       *pf != NULL;
       pf = &(*pf)->next)
    ;
  *pf = f;

  info->current_file = f;

  return TRUE;
}