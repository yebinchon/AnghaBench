#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {uintptr_t size; scalar_t__ data; int /*<<< orphan*/  skip_destructor_rounds; } ;
typedef  TYPE_1__ emutls_address_array ;

/* Variables and functions */
 int /*<<< orphan*/  EMUTLS_SKIP_DESTRUCTOR_ROUNDS ; 
 int /*<<< orphan*/  FUNC0 (uintptr_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,uintptr_t) ; 
 TYPE_1__* FUNC2 () ; 
 uintptr_t FUNC3 (uintptr_t) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,uintptr_t) ; 
 scalar_t__ FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline emutls_address_array *
FUNC7(uintptr_t index) {
  emutls_address_array *array = FUNC2();
  if (array == NULL) {
    uintptr_t new_size = FUNC3(index);
    array = (emutls_address_array *)FUNC4(FUNC0(new_size));
    if (array) {
      FUNC5(array->data, 0, new_size * sizeof(void *));
      array->skip_destructor_rounds = EMUTLS_SKIP_DESTRUCTOR_ROUNDS;
    }
    FUNC1(array, new_size);
  } else if (index > array->size) {
    uintptr_t orig_size = array->size;
    uintptr_t new_size = FUNC3(index);
    array = (emutls_address_array *)FUNC6(array, FUNC0(new_size));
    if (array)
      FUNC5(array->data + orig_size, 0,
             (new_size - orig_size) * sizeof(void *));
    FUNC1(array, new_size);
  }
  return array;
}