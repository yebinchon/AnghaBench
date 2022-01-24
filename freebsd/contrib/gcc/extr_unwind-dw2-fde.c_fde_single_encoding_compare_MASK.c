#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  encoding; } ;
struct TYPE_7__ {TYPE_1__ b; } ;
struct object {TYPE_2__ s; } ;
struct TYPE_8__ {int /*<<< orphan*/  pc_begin; } ;
typedef  TYPE_3__ fde ;
typedef  scalar_t__ _Unwind_Ptr ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,struct object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int
FUNC2 (struct object *ob, const fde *x, const fde *y)
{
  _Unwind_Ptr base, x_ptr, y_ptr;

  base = FUNC0 (ob->s.b.encoding, ob);
  FUNC1 (ob->s.b.encoding, base, x->pc_begin, &x_ptr);
  FUNC1 (ob->s.b.encoding, base, y->pc_begin, &y_ptr);

  if (x_ptr > y_ptr)
    return 1;
  if (x_ptr < y_ptr)
    return -1;
  return 0;
}