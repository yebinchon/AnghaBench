#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int depth; scalar_t__ owner; int /*<<< orphan*/  counter; int /*<<< orphan*/  sema; } ;
typedef  TYPE_1__ __gthread_recursive_mutex_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  INFINITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ WAIT_OBJECT_0 ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int
FUNC4 (__gthread_recursive_mutex_t *mutex)
{
  DWORD me = FUNC0();
  if (FUNC2 (&mutex->counter) == 0)
    {
      mutex->depth = 1;
      mutex->owner = me;
    }
  else if (mutex->owner == me)
    {
      FUNC1 (&mutex->counter);
      ++(mutex->depth);
    }
  else if (FUNC3 (mutex->sema, INFINITE) == WAIT_OBJECT_0)
    {
      mutex->depth = 1;
      mutex->owner = me;
    }
  else
    {
      /* WaitForSingleObject returns WAIT_FAILED, and we can only do
         some best-effort cleanup here.  */
      FUNC1 (&mutex->counter);
      return 1;
    }
  return 0;
}