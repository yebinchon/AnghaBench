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
struct TYPE_5__ {int /*<<< orphan*/ * sy_frag; } ;
typedef  TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;
typedef  int /*<<< orphan*/  fragS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct local_symbol*,int /*<<< orphan*/ *) ; 

void
FUNC3 (symbolS *s, fragS *f)
{
  if (FUNC0 (s))
    {
      FUNC2 ((struct local_symbol *) s, f);
      return;
    }
  s->sy_frag = f;
  FUNC1 (s);
}