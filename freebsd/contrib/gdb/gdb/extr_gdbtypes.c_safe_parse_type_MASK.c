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
struct type {int dummy; } ;

/* Variables and functions */
 struct type* builtin_type_void ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct type**) ; 
 struct ui_file* gdb_stderr ; 
 int /*<<< orphan*/  FUNC1 (struct ui_file*) ; 
 struct ui_file* FUNC2 () ; 

__attribute__((used)) static struct type *
FUNC3 (char *p, int length)
{
  struct ui_file *saved_gdb_stderr;
  struct type *type;

  /* Suppress error messages. */
  saved_gdb_stderr = gdb_stderr;
  gdb_stderr = FUNC2 ();

  /* Call parse_and_eval_type() without fear of longjmp()s. */
  if (!FUNC0 (p, length, &type))
    type = builtin_type_void;

  /* Stop suppressing error messages. */
  FUNC1 (gdb_stderr);
  gdb_stderr = saved_gdb_stderr;

  return type;
}