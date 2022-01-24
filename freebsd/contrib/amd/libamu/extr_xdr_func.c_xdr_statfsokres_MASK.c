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
struct TYPE_3__ {int /*<<< orphan*/  sfrok_bavail; int /*<<< orphan*/  sfrok_bfree; int /*<<< orphan*/  sfrok_blocks; int /*<<< orphan*/  sfrok_bsize; int /*<<< orphan*/  sfrok_tsize; } ;
typedef  TYPE_1__ nfsstatfsokres ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  D_XDRTRACE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XLOG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC3(XDR *xdrs, nfsstatfsokres *objp)
{
  if (FUNC0(D_XDRTRACE))
    FUNC1(XLOG_DEBUG, "xdr_statfsokres:");

  if (!FUNC2(xdrs, &objp->sfrok_tsize)) {
    return (FALSE);
  }
  if (!FUNC2(xdrs, &objp->sfrok_bsize)) {
    return (FALSE);
  }
  if (!FUNC2(xdrs, &objp->sfrok_blocks)) {
    return (FALSE);
  }
  if (!FUNC2(xdrs, &objp->sfrok_bfree)) {
    return (FALSE);
  }
  if (!FUNC2(xdrs, &objp->sfrok_bavail)) {
    return (FALSE);
  }
  return (TRUE);
}