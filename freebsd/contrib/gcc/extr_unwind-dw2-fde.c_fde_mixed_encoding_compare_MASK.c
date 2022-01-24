#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct object {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  pc_begin; } ;
typedef  TYPE_1__ fde ;
typedef  scalar_t__ _Unwind_Ptr ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct object*) ; 
 int FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC3 (struct object *ob, const fde *x, const fde *y)
{
  int x_encoding, y_encoding;
  _Unwind_Ptr x_ptr, y_ptr;

  x_encoding = FUNC1 (x);
  FUNC2 (x_encoding, FUNC0 (x_encoding, ob),
				x->pc_begin, &x_ptr);

  y_encoding = FUNC1 (y);
  FUNC2 (y_encoding, FUNC0 (y_encoding, ob),
				y->pc_begin, &y_ptr);

  if (x_ptr > y_ptr)
    return 1;
  if (x_ptr < y_ptr)
    return -1;
  return 0;
}