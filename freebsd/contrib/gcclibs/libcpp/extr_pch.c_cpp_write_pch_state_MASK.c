#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  counter; scalar_t__ deps; } ;
typedef  TYPE_1__ cpp_reader ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 

int
FUNC5 (cpp_reader *r, FILE *f)
{
  if (!r->deps)
    r->deps = FUNC2 ();

  if (FUNC3 (r->deps, f) != 0)
    {
      FUNC1 (r, CPP_DL_ERROR, "while writing precompiled header");
      return -1;
    }

  if (! FUNC0 (r, f))
    {
      FUNC1 (r, CPP_DL_ERROR, "while writing precompiled header");
      return -1;
    }

  /* Save the next __COUNTER__ value.  When we include a precompiled header,
     we need to start at the offset we would have if the header had been
     included normally. */
  if (FUNC4 (&r->counter, sizeof (r->counter), 1, f) != 1)
    {
      FUNC1 (r, CPP_DL_ERROR, "while writing precompiled header");
      return -1;
    }

  return 0;
}