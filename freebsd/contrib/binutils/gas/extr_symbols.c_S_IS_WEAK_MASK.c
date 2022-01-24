#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {TYPE_3__* X_add_symbol; } ;
struct TYPE_9__ {TYPE_2__* bsym; TYPE_1__ sy_value; } ;
typedef  TYPE_3__ symbolS ;
struct TYPE_8__ {int flags; } ;

/* Variables and functions */
 int BSF_WEAK ; 
 scalar_t__ FUNC0 (TYPE_3__*) ; 
 scalar_t__ FUNC1 (TYPE_3__*) ; 

int
FUNC2 (symbolS *s)
{
  if (FUNC0 (s))
    return 0;
  /* Conceptually, a weakrefr is weak if the referenced symbol is.  We
     could probably handle a WEAKREFR as always weak though.  E.g., if
     the referenced symbol has lost its weak status, there's no reason
     to keep handling the weakrefr as if it was weak.  */
  if (FUNC1 (s))
    return FUNC2 (s->sy_value.X_add_symbol);
  return (s->bsym->flags & BSF_WEAK) != 0;
}