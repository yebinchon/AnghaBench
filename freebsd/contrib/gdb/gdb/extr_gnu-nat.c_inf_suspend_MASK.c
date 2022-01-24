#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct proc {int /*<<< orphan*/  pause_sc; int /*<<< orphan*/  sc; struct proc* next; } ;
struct inf {int /*<<< orphan*/  pause_sc; TYPE_1__* task; struct proc* threads; } ;
struct TYPE_2__ {int /*<<< orphan*/  sc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inf*) ; 
 int /*<<< orphan*/  FUNC1 (struct inf*) ; 

void
FUNC2 (struct inf *inf)
{
  struct proc *thread;

  FUNC0 (inf);

  for (thread = inf->threads; thread; thread = thread->next)
    thread->sc = thread->pause_sc;

  if (inf->task)
    inf->task->sc = inf->pause_sc;

  FUNC1 (inf);
}