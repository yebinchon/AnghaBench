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
struct target_ops {int dummy; } ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  builtin_type_void_data_ptr ; 
 int /*<<< orphan*/  FUNC1 (char*,int const) ; 

int
FUNC2 (struct target_ops *ops, char **readptr, char *endptr,
		   CORE_ADDR *typep, CORE_ADDR *valp)
{
  const int sizeof_auxv_field = FUNC0 (builtin_type_void_data_ptr);
  char *ptr = *readptr;

  if (endptr == ptr)
    return 0;

  if (endptr - ptr < sizeof_auxv_field * 2)
    return -1;

  *typep = FUNC1 (ptr, sizeof_auxv_field);
  ptr += sizeof_auxv_field;
  *valp = FUNC1 (ptr, sizeof_auxv_field);
  ptr += sizeof_auxv_field;

  *readptr = ptr;
  return 1;
}