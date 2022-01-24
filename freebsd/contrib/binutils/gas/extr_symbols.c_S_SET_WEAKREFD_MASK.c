#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sy_weakrefd; } ;
typedef  TYPE_1__ symbolS ;
struct local_symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 TYPE_1__* FUNC2 (struct local_symbol*) ; 

void
FUNC3 (symbolS *s)
{
  if (FUNC0 (s))
    s = FUNC2 ((struct local_symbol *) s);
  s->sy_weakrefd = 1;
  FUNC1 (s);
}