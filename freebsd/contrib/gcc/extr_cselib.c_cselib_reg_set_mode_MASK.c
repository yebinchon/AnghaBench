#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_6__ {TYPE_2__* elt; } ;
struct TYPE_4__ {int /*<<< orphan*/  val_rtx; } ;
struct TYPE_5__ {TYPE_1__ u; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 

enum machine_mode
FUNC4 (rtx x)
{
  if (!FUNC2 (x))
    return FUNC0 (x);

  if (FUNC3 (FUNC1 (x)) == NULL
      || FUNC3 (FUNC1 (x))->elt == NULL)
    return VOIDmode;

  return FUNC0 (FUNC3 (FUNC1 (x))->elt->u.val_rtx);
}