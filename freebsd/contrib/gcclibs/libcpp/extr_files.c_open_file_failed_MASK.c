#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  deps; TYPE_1__* buffer; TYPE_2__* line_table; } ;
typedef  TYPE_3__ cpp_reader ;
struct TYPE_13__ {scalar_t__ err_no; int /*<<< orphan*/  path; int /*<<< orphan*/  name; } ;
typedef  TYPE_4__ _cpp_file ;
struct TYPE_14__ {int /*<<< orphan*/  style; int /*<<< orphan*/  missing_files; } ;
struct TYPE_11__ {int highest_line; } ;
struct TYPE_10__ {int sysp; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ ENOENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_7__ deps ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 

__attribute__((used)) static void
FUNC3 (cpp_reader *pfile, _cpp_file *file, int angle_brackets)
{
  int sysp = pfile->line_table->highest_line > 1 && pfile->buffer ? pfile->buffer->sysp : 0;
  bool print_dep = FUNC0 (pfile, deps.style) > (angle_brackets || !!sysp);

  errno = file->err_no;
  if (print_dep && FUNC0 (pfile, deps.missing_files) && errno == ENOENT)
    FUNC2 (pfile->deps, file->name);
  else
    {
      /* If we are outputting dependencies but not for this file then
	 don't error because we can still produce correct output.  */
      if (FUNC0 (pfile, deps.style) && ! print_dep)
	FUNC1 (pfile, CPP_DL_WARNING, file->path);
      else
	FUNC1 (pfile, CPP_DL_ERROR, file->path);
    }
}