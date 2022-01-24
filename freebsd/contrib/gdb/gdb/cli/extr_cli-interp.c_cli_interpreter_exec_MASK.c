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
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 struct ui_file* FUNC1 (int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  cli_uiout ; 
 struct ui_file* gdb_stdout ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC4 (char const*) ; 

__attribute__((used)) static int
FUNC5 (void *data, const char *command_str)
{
  int result;
  struct ui_file *old_stream;

  /* FIXME: cagney/2003-02-01: Need to const char *propogate
     safe_execute_command.  */
  char *str = FUNC3 (FUNC0 (FUNC4 (command_str) + 1), command_str);

  /* gdb_stdout could change between the time cli_uiout was initialized
     and now. Since we're probably using a different interpreter which has
     a new ui_file for gdb_stdout, use that one instead of the default.

     It is important that it gets reset everytime, since the user could
     set gdb to use a different interpreter. */
  old_stream = FUNC1 (cli_uiout, gdb_stdout);
  result = FUNC2 (cli_uiout, str, 1);
  FUNC1 (cli_uiout, old_stream);
  return result;
}