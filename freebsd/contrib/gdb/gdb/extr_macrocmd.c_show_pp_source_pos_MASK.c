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
struct ui_file {int dummy; } ;
struct macro_source_file {int included_at_line; struct macro_source_file* included_by; int /*<<< orphan*/  filename; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,int /*<<< orphan*/ ,int) ; 
 struct ui_file* gdb_stdout ; 

__attribute__((used)) static void
FUNC1 (struct ui_file *stream,
                    struct macro_source_file *file,
                    int line)
{
  FUNC0 (stream, "%s:%d\n", file->filename, line);

  while (file->included_by)
    {
      FUNC0 (gdb_stdout, "  included at %s:%d\n",
                        file->included_by->filename,
                        file->included_at_line);
      file = file->included_by;
    }
}