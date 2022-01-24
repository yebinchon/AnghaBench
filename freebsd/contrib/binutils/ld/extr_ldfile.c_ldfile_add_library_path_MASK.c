#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_4__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  sysrooted; int /*<<< orphan*/  name; struct TYPE_5__* next; scalar_t__ cmdline; } ;
typedef  TYPE_1__ search_dirs_type ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_6__ {scalar_t__ only_cmd_line_lib_dirs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 TYPE_4__ config ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ld_sysroot ; 
 TYPE_1__** search_tail_ptr ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

void
FUNC4 (const char *name, bfd_boolean cmdline)
{
  search_dirs_type *new;

  if (!cmdline && config.only_cmd_line_lib_dirs)
    return;

  new = FUNC2 (sizeof (search_dirs_type));
  new->next = NULL;
  new->cmdline = cmdline;
  *search_tail_ptr = new;
  search_tail_ptr = &new->next;

  /* If a directory is marked as honoring sysroot, prepend the sysroot path
     now.  */
  if (name[0] == '=')
    {
      new->name = FUNC0 (ld_sysroot, name + 1, NULL);
      new->sysrooted = TRUE;
    }
  else
    {
      new->name = FUNC3 (name);
      new->sysrooted = FUNC1 (name, FALSE);
    }
}