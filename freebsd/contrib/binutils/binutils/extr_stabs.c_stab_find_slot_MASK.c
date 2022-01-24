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
struct stab_types {int /*<<< orphan*/ * types; struct stab_types* next; } ;
struct stab_handle {unsigned int files; struct stab_types** file_types; } ;
typedef  int /*<<< orphan*/  debug_type ;

/* Variables and functions */
 int STAB_TYPES_SLOTS ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stab_types*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static debug_type *
FUNC4 (struct stab_handle *info, const int *typenums)
{
  int filenum;
  int index;
  struct stab_types **ps;

  filenum = typenums[0];
  index = typenums[1];

  if (filenum < 0 || (unsigned int) filenum >= info->files)
    {
      FUNC1 (stderr, FUNC0("Type file number %d out of range\n"), filenum);
      return NULL;
    }
  if (index < 0)
    {
      FUNC1 (stderr, FUNC0("Type index number %d out of range\n"), index);
      return NULL;
    }

  ps = info->file_types + filenum;

  while (index >= STAB_TYPES_SLOTS)
    {
      if (*ps == NULL)
	{
	  *ps = (struct stab_types *) FUNC3 (sizeof **ps);
	  FUNC2 (*ps, 0, sizeof **ps);
	}
      ps = &(*ps)->next;
      index -= STAB_TYPES_SLOTS;
    }
  if (*ps == NULL)
    {
      *ps = (struct stab_types *) FUNC3 (sizeof **ps);
      FUNC2 (*ps, 0, sizeof **ps);
    }

  return (*ps)->types + index;
}