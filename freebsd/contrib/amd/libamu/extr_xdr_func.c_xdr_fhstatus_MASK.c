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
struct TYPE_3__ {scalar_t__ fhs_status; int /*<<< orphan*/  fhs_fh; } ;
typedef  TYPE_1__ fhstatus ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  D_XDRTRACE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XLOG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 

bool_t
FUNC4(XDR *xdrs, fhstatus *objp)
{
  if (FUNC0(D_XDRTRACE))
    FUNC1(XLOG_DEBUG, "xdr_fhstatus:");

  if (!FUNC3(xdrs, &objp->fhs_status)) {
    return (FALSE);
  }
  if (objp->fhs_status == 0 && !FUNC2(xdrs, objp->fhs_fh)) {
    return (FALSE);
  }
  return (TRUE);
}