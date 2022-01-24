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
typedef  TYPE_1__* btr_user ;
typedef  TYPE_2__* btr_def ;
struct TYPE_5__ {scalar_t__ bb; TYPE_1__* uses; scalar_t__ other_btr_uses_after_use; scalar_t__ other_btr_uses_before_def; } ;
struct TYPE_4__ {scalar_t__ bb; struct TYPE_4__* next; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static int
FUNC1 (int bb, btr_def def)
{
  if (def->other_btr_uses_before_def && FUNC0 (bb) == def->bb)
    return 1;
  else if (def->other_btr_uses_after_use)
    {
      btr_user user;
      for (user = def->uses; user != NULL; user = user->next)
	if (FUNC0 (bb) == user->bb)
	  return 1;
    }
  return 0;
}