#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {TYPE_2__* file; } ;
struct file_hash_entry {TYPE_1__ u; int /*<<< orphan*/ * start_dir; } ;
struct TYPE_4__ {int stack_count; int /*<<< orphan*/  path; int /*<<< orphan*/  main_file; int /*<<< orphan*/ * cmacro; } ;
typedef  TYPE_2__ _cpp_file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int
FUNC3 (void **slot, void *b)
{
  struct file_hash_entry *entry = (struct file_hash_entry *) *slot;
  int *bannerp = (int *) b;

  /* Skip directories.  */
  if (entry->start_dir != NULL)
    {
      _cpp_file *file = entry->u.file;

      /* We don't want MI guard advice for the main file.  */
      if (file->cmacro == NULL && file->stack_count == 1 && !file->main_file)
	{
	  if (*bannerp == 0)
	    {
	      FUNC1 (FUNC0("Multiple include guards may be useful for:\n"),
		     stderr);
	      *bannerp = 1;
	    }

	  FUNC1 (entry->u.file->path, stderr);
	  FUNC2 ('\n', stderr);
	}
    }

  return 0;
}