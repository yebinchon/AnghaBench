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
struct TYPE_6__ {TYPE_2__* X_add_symbol; } ;
struct TYPE_7__ {int sy_used; TYPE_1__ sy_value; } ;
typedef  TYPE_2__ symbolS ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 

void
FUNC2 (symbolS *s)
{
  if (FUNC0 (s))
    return;
  s->sy_used = 1;
  if (FUNC1 (s))
    FUNC2 (s->sy_value.X_add_symbol);
}