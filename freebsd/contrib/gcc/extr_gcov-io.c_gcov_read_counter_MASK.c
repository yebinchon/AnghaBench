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
typedef  int /*<<< orphan*/  value ;
typedef  scalar_t__ gcov_unsigned_t ;
typedef  int gcov_type ;
struct TYPE_2__ {int error; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__ const) ; 
 scalar_t__* FUNC1 (int) ; 
 TYPE_1__ gcov_var ; 

gcov_type
FUNC2 (void)
{
  gcov_type value;
  const gcov_unsigned_t *buffer = FUNC1 (2);

  if (!buffer)
    return 0;
  value = FUNC0 (buffer[0]);
  if (sizeof (value) > sizeof (gcov_unsigned_t))
    value |= ((gcov_type) FUNC0 (buffer[1])) << 32;
  else if (buffer[1])
    gcov_var.error = -1;

  return value;
}