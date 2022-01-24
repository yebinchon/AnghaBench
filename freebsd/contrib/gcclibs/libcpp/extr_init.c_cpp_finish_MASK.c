#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ errors; int /*<<< orphan*/  deps; scalar_t__ buffer; } ;
typedef  TYPE_1__ cpp_reader ;
struct TYPE_9__ {int /*<<< orphan*/  phony_targets; int /*<<< orphan*/  style; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ DEPS_NONE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  _cpp_warn_if_unused_macro ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__ deps ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  print_include_names ; 
 int /*<<< orphan*/  warn_unused_macros ; 

int
FUNC6 (cpp_reader *pfile, FILE *deps_stream)
{
  /* Warn about unused macros before popping the final buffer.  */
  if (FUNC0 (pfile, warn_unused_macros))
    FUNC3 (pfile, _cpp_warn_if_unused_macro, NULL);

  /* lex.c leaves the final buffer on the stack.  This it so that
     it returns an unending stream of CPP_EOFs to the client.  If we
     popped the buffer, we'd dereference a NULL buffer pointer and
     segfault.  It's nice to allow the client to do worry-free excess
     cpp_get_token calls.  */
  while (pfile->buffer)
    FUNC1 (pfile);

  /* Don't write the deps file if there are errors.  */
  if (FUNC0 (pfile, deps.style) != DEPS_NONE
      && deps_stream && pfile->errors == 0)
    {
      FUNC5 (pfile->deps, deps_stream, 72);

      if (FUNC0 (pfile, deps.phony_targets))
	FUNC4 (pfile->deps, deps_stream);
    }

  /* Report on headers that could use multiple include guards.  */
  if (FUNC0 (pfile, print_include_names))
    FUNC2 (pfile);

  return pfile->errors;
}