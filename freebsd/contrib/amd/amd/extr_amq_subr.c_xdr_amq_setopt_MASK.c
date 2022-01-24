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
typedef  scalar_t__ voidp ;
typedef  int /*<<< orphan*/  enum_t ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_3__ {int /*<<< orphan*/  as_str; int /*<<< orphan*/  as_opt; } ;
typedef  TYPE_1__ amq_setopt ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  AMQ_STRLEN ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

bool_t
FUNC2(XDR *xdrs, amq_setopt *objp)
{
  if (!FUNC0(xdrs, (enum_t *) ((voidp) &objp->as_opt))) {
    return (FALSE);
  }
  if (!FUNC1(xdrs, &objp->as_str, AMQ_STRLEN)) {
    return (FALSE);
  }
  return (TRUE);
}