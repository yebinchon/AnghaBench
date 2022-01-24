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
struct TYPE_3__ {int /*<<< orphan*/  ra_totalcount; int /*<<< orphan*/  ra_count; int /*<<< orphan*/  ra_offset; int /*<<< orphan*/  ra_fhandle; } ;
typedef  TYPE_1__ nfsreadargs ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC4(XDR *xdrs, nfsreadargs *objp)
{
  if (FUNC0(D_XDRTRACE))
    FUNC1(XLOG_DEBUG, "xdr_readargs:");

  if (!FUNC2(xdrs, &objp->ra_fhandle)) {
    return (FALSE);
  }
  if (!FUNC3(xdrs, &objp->ra_offset)) {
    return (FALSE);
  }
  if (!FUNC3(xdrs, &objp->ra_count)) {
    return (FALSE);
  }
  if (!FUNC3(xdrs, &objp->ra_totalcount)) {
    return (FALSE);
  }
  return (TRUE);
}