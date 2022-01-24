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
typedef  int /*<<< orphan*/  gcov_unsigned_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 

gcov_unsigned_t
FUNC2 (void)
{
  gcov_unsigned_t value;
  const gcov_unsigned_t *buffer = FUNC1 (1);

  if (!buffer)
    return 0;
  value = FUNC0 (buffer[0]);
  return value;
}