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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* FUNC0 (int /*<<< orphan*/ *,struct type*,struct type*) ; 
 struct type* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

struct type *
FUNC2 (struct type *type, int dims)
{
  struct type *range_type;

  while (dims-- > 0)
    {
      range_type = FUNC1 (NULL, builtin_type_int, 0, 0);
      /* FIXME  This is bogus!  Java arrays are not gdb arrays! */
      type = FUNC0 (NULL, type, range_type);
    }

  return type;
}