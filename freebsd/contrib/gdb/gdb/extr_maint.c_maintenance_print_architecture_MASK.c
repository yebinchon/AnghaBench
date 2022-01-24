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

/* Variables and functions */
 int /*<<< orphan*/  current_gdbarch ; 
 struct ui_file* FUNC0 (char*,char*) ; 
 struct ui_file* gdb_stdout ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ui_file*) ; 

__attribute__((used)) static void
FUNC4 (char *args, int from_tty)
{
  if (args == NULL)
    FUNC1 (current_gdbarch, gdb_stdout);
  else
    {
      struct ui_file *file = FUNC0 (args, "w");
      if (file == NULL)
	FUNC2 ("maintenance print architecture");
      FUNC1 (current_gdbarch, file);    
      FUNC3 (file);
    }
}