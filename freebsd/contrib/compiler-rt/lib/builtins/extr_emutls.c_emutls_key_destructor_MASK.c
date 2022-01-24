#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ skip_destructor_rounds; } ;
typedef  TYPE_1__ emutls_address_array ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

__attribute__((used)) static void FUNC3(void *ptr) {
  emutls_address_array *array = (emutls_address_array *)ptr;
  if (array->skip_destructor_rounds > 0) {
    // emutls is deallocated using a pthread key destructor. These
    // destructors are called in several rounds to accommodate destructor
    // functions that (re)initialize key values with pthread_setspecific.
    // Delay the emutls deallocation to accommodate other end-of-thread
    // cleanup tasks like calling thread_local destructors (e.g. the
    // __cxa_thread_atexit fallback in libc++abi).
    array->skip_destructor_rounds--;
    FUNC0(array);
  } else {
    FUNC1(array);
    FUNC2(ptr);
  }
}