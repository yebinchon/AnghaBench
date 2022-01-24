#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  int pp_needs_newline ;
typedef  int /*<<< orphan*/  c_pretty_printer ;
struct TYPE_5__ {TYPE_1__* buffer; } ;
struct TYPE_4__ {int /*<<< orphan*/ * stream; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC6 (FILE *file, tree t)
{
  static c_pretty_printer pp_rec;
  static bool initialized = 0;
  c_pretty_printer *pp = &pp_rec;

  if (!initialized)
    {
      initialized = 1;
      FUNC2 (FUNC0 (pp), NULL, 0);
      FUNC1 (pp);
      pp_needs_newline (pp) = true;
    }
  FUNC0 (pp)->buffer->stream = file;

  FUNC5 (pp, t);

  FUNC4 (pp);
  FUNC3 (pp);
}