#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  Lock ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(int size, void *ptr, void *val, void *old, int model) {
#define LOCK_FREE_ACTION(type)                                                 \
  *(type *)old =                                                               \
      __c11_atomic_exchange((_Atomic(type) *)ptr, *(type *)val, model);        \
  return;
  FUNC0();
#undef LOCK_FREE_ACTION
  Lock *l = FUNC2(ptr);
  FUNC1(l);
  FUNC3(old, ptr, size);
  FUNC3(ptr, val, size);
  FUNC4(l);
}