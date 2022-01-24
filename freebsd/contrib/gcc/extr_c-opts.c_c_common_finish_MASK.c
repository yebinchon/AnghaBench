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
struct TYPE_3__ {scalar_t__ style; } ;
struct TYPE_4__ {TYPE_1__ deps; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ DEPS_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_2__* cpp_opts ; 
 scalar_t__ deps_append ; 
 int /*<<< orphan*/  deps_file ; 
 int /*<<< orphan*/  errorcount ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  out_fname ; 
 int /*<<< orphan*/ * out_stream ; 
 int /*<<< orphan*/  parse_in ; 

void
FUNC5 (void)
{
  FILE *deps_stream = NULL;

  if (cpp_opts->deps.style != DEPS_NONE)
    {
      /* If -M or -MM was seen without -MF, default output to the
	 output stream.  */
      if (!deps_file)
	deps_stream = out_stream;
      else
	{
	  deps_stream = FUNC4 (deps_file, deps_append ? "a": "w");
	  if (!deps_stream)
	    FUNC1 ("opening dependency file %s: %m", deps_file);
	}
    }

  /* For performance, avoid tearing down cpplib's internal structures
     with cpp_destroy ().  */
  errorcount += FUNC0 (parse_in, deps_stream);

  if (deps_stream && deps_stream != out_stream
      && (FUNC3 (deps_stream) || FUNC2 (deps_stream)))
    FUNC1 ("closing dependency file %s: %m", deps_file);

  if (out_stream && (FUNC3 (out_stream) || FUNC2 (out_stream)))
    FUNC1 ("when writing output to %s: %m", out_fname);
}