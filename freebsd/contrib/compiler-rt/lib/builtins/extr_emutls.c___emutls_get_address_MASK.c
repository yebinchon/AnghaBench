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
struct TYPE_3__ {void** data; } ;
typedef  TYPE_1__ emutls_address_array ;
typedef  int /*<<< orphan*/  __emutls_control ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 uintptr_t FUNC2 (int /*<<< orphan*/ *) ; 

void *FUNC3(__emutls_control *control) {
  uintptr_t index = FUNC2(control);
  emutls_address_array *array = FUNC1(index--);
  if (array->data[index] == NULL)
    array->data[index] = FUNC0(control);
  return array->data[index];
}