#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* bsym; } ;
typedef  TYPE_2__ symbolS ;
struct TYPE_5__ {int flags; } ;

/* Variables and functions */
 int BSF_DEBUGGING ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 

int
FUNC1 (symbolS *s)
{
  if (FUNC0 (s))
    return 0;
  if (s->bsym->flags & BSF_DEBUGGING)
    return 1;
  return 0;
}