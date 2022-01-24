#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_1__* buffer; } ;
typedef  TYPE_2__ pretty_printer ;
struct TYPE_7__ {int /*<<< orphan*/  line_length; int /*<<< orphan*/  obstack; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 scalar_t__ FUNC4 (TYPE_2__*) ; 

void
FUNC5 (pretty_printer *pp, int c)
{
  if (FUNC2 (pp)
      && FUNC4 (pp) <= 0)
    {
      FUNC3 (pp);
      if (FUNC0 (c))
        return;
    }
  FUNC1 (pp->buffer->obstack, c);
  ++pp->buffer->line_length;
}