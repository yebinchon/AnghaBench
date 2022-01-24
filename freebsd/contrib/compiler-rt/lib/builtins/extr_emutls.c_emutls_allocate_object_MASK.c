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
typedef  int /*<<< orphan*/  gcc_pointer ;
struct TYPE_3__ {size_t size; int /*<<< orphan*/  value; int /*<<< orphan*/  align; } ;
typedef  TYPE_1__ __emutls_control ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static __inline void *FUNC5(__emutls_control *control) {
  // Use standard C types, check with gcc's emutls.o.
  FUNC0(sizeof(uintptr_t) == sizeof(gcc_pointer));
  FUNC0(sizeof(uintptr_t) == sizeof(void *));

  size_t size = control->size;
  size_t align = control->align;
  void *base;
  if (align < sizeof(void *))
    align = sizeof(void *);
  // Make sure that align is power of 2.
  if ((align & (align - 1)) != 0)
    FUNC1();

  base = FUNC2(align, size);
  if (control->value)
    FUNC3(base, control->value, size);
  else
    FUNC4(base, 0, size);
  return base;
}