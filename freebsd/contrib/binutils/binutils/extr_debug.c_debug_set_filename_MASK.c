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
struct debug_unit {char const* filename; struct debug_unit* next; struct debug_unit* files; } ;
struct debug_handle {int /*<<< orphan*/ * current_lineno; int /*<<< orphan*/ * current_block; int /*<<< orphan*/ * current_function; struct debug_unit* current_unit; struct debug_unit* units; struct debug_unit* current_file; } ;
struct debug_file {char const* filename; struct debug_file* next; struct debug_file* files; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct debug_unit*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (int) ; 

bfd_boolean
FUNC3 (void *handle, const char *name)
{
  struct debug_handle *info = (struct debug_handle *) handle;
  struct debug_file *nfile;
  struct debug_unit *nunit;

  if (name == NULL)
    name = "";

  nfile = (struct debug_file *) FUNC2 (sizeof *nfile);
  FUNC1 (nfile, 0, sizeof *nfile);

  nfile->filename = name;

  nunit = (struct debug_unit *) FUNC2 (sizeof *nunit);
  FUNC1 (nunit, 0, sizeof *nunit);

  nunit->files = nfile;
  info->current_file = nfile;

  if (info->current_unit != NULL)
    info->current_unit->next = nunit;
  else
    {
      FUNC0 (info->units == NULL);
      info->units = nunit;
    }

  info->current_unit = nunit;

  info->current_function = NULL;
  info->current_block = NULL;
  info->current_lineno = NULL;

  return TRUE;
}