#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  X_add_symbol; } ;
struct TYPE_7__ {int sy_weakrefr; TYPE_1__ sy_value; scalar_t__ sy_used; } ;
typedef  TYPE_2__ symbolS ;
struct local_symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (struct local_symbol*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void
FUNC3 (symbolS *s)
{
  if (FUNC0 (s))
    s = FUNC1 ((struct local_symbol *) s);
  s->sy_weakrefr = 1;
  /* If the alias was already used, make sure we mark the target as
     used as well, otherwise it might be dropped from the symbol
     table.  This may have unintended side effects if the alias is
     later redirected to another symbol, such as keeping the unused
     previous target in the symbol table.  Since it will be weak, it's
     not a big deal.  */
  if (s->sy_used)
    FUNC2 (s->sy_value.X_add_symbol);
}