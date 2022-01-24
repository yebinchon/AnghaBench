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
 scalar_t__ FUNC3 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

int FUNC6(int size, void *ptr, void *expected,
                                void *desired, int success, int failure) {
#define LOCK_FREE_ACTION(type)                                                 \
  return __c11_atomic_compare_exchange_strong(                                 \
      (_Atomic(type) *)ptr, (type *)expected, *(type *)desired, success,       \
      failure)
  FUNC0();
#undef LOCK_FREE_ACTION
  Lock *l = FUNC2(ptr);
  FUNC1(l);
  if (FUNC3(ptr, expected, size) == 0) {
    FUNC4(ptr, desired, size);
    FUNC5(l);
    return 1;
  }
  FUNC4(expected, ptr, size);
  FUNC5(l);
  return 0;
}