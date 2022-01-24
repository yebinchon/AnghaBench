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
struct filedep {char* pathname; struct filedep* next; } ;

/* Variables and functions */
 int FATAL_EXIT_CODE ; 
 scalar_t__ SUCCESS_EXIT_CODE ; 
 int /*<<< orphan*/  add_filedep ; 
 struct filedep* deps ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  include_callback ; 
 scalar_t__ FUNC3 (int,char**) ; 
 int /*<<< orphan*/ ** last ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 char* progname ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  stdout ; 

int
FUNC6 (int argc, char **argv)
{
  struct filedep *d;

  progname = "genmddeps";
  include_callback = add_filedep;
  
  if (FUNC3 (argc, argv) != SUCCESS_EXIT_CODE)
    return (FATAL_EXIT_CODE);

  *last = NULL;

  /* Output a variable containing all of the include files.  */
  FUNC2 ("MD_INCLUDES =", stdout);
  for (d = deps; d ; d = d->next)
    FUNC4 (" \\\n\t%s", d->pathname);
  FUNC5 ('\n');

  /* Output make targets for these includes with empty actions.  This
     will guard against make errors when includes are removed.  */
  for (d = deps; d ; d = d->next)
    FUNC4 ("\n%s:\n", d->pathname);

  FUNC1 (stdout);
  return (FUNC0 (stdout) != 0 ? FATAL_EXIT_CODE : SUCCESS_EXIT_CODE);
}