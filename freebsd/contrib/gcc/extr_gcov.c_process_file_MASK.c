#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int /*<<< orphan*/  name; TYPE_3__ coverage; struct TYPE_13__* next; int /*<<< orphan*/  num_lines; int /*<<< orphan*/  lines; } ;
typedef  TYPE_1__ source_t ;
struct TYPE_14__ {int /*<<< orphan*/  name; struct TYPE_14__* next; } ;
typedef  TYPE_2__ function_t ;
typedef  TYPE_3__ coverage_t ;
typedef  int /*<<< orphan*/  coverage ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  bbg_file_name ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ flag_function_summary ; 
 scalar_t__ flag_gcov_file ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,char*) ; 
 TYPE_2__* functions ; 
 int /*<<< orphan*/  line_t ; 
 char* FUNC10 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC13 () ; 
 scalar_t__ FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (TYPE_2__*) ; 
 TYPE_1__* sources ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC16 (const char *file_name)
{
  source_t *src;
  function_t *fn;

  FUNC3 (file_name);
  if (FUNC14 ())
    return;

  if (!functions)
    {
      FUNC6 (stderr, "%s:no functions found\n", bbg_file_name);
      return;
    }

  if (FUNC13 ())
    return;

  for (fn = functions; fn; fn = fn->next)
    FUNC15 (fn);
  for (src = sources; src; src = src->next)
    src->lines = FUNC0 (line_t, src->num_lines);
  for (fn = functions; fn; fn = fn->next)
    {
      coverage_t coverage;

      FUNC11 (&coverage, 0, sizeof (coverage));
      coverage.name = fn->name;
      FUNC2 (flag_function_summary ? &coverage : NULL, fn);
      if (flag_function_summary)
	{
	  FUNC9 (&coverage, "Function");
	  FUNC6 (stdout, "\n");
	}
    }

  for (src = sources; src; src = src->next)
    {
      FUNC1 (src);
      FUNC9 (&src->coverage, "File");
      if (flag_gcov_file)
	{
	  char *gcov_file_name = FUNC10 (file_name, src->name);
	  FILE *gcov_file = FUNC7 (gcov_file_name, "w");

	  if (gcov_file)
	    {
	      FUNC6 (stdout, "%s:creating '%s'\n",
		       src->name, gcov_file_name);
	      FUNC12 (gcov_file, src);
	      if (FUNC5 (gcov_file))
		    FUNC6 (stderr, "%s:error writing output file '%s'\n",
			     src->name, gcov_file_name);
	      FUNC4 (gcov_file);
	    }
	  else
	    FUNC6 (stderr, "%s:could not open output file '%s'\n",
		     src->name, gcov_file_name);
	  FUNC8 (gcov_file_name);
	}
      FUNC6 (stdout, "\n");
    }
}