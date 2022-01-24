#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_int ;
struct TYPE_4__ {int /*<<< orphan*/  wra_len_u; int /*<<< orphan*/  wra_val_u; } ;
struct TYPE_5__ {TYPE_1__ wra_u; int /*<<< orphan*/  wra_totalcount; int /*<<< orphan*/  wra_offset; int /*<<< orphan*/  wra_beginoffset; int /*<<< orphan*/  wra_fhandle; } ;
typedef  TYPE_2__ nfswriteargs ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  D_XDRTRACE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  NFS_MAXDATA ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XLOG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC5(XDR *xdrs, nfswriteargs *objp)
{
  if (FUNC0(D_XDRTRACE))
    FUNC1(XLOG_DEBUG, "xdr_writeargs:");

  if (!FUNC3(xdrs, &objp->wra_fhandle)) {
    return (FALSE);
  }
  if (!FUNC4(xdrs, &objp->wra_beginoffset)) {
    return (FALSE);
  }
  if (!FUNC4(xdrs, &objp->wra_offset)) {
    return (FALSE);
  }
  if (!FUNC4(xdrs, &objp->wra_totalcount)) {
    return (FALSE);
  }
  if (!FUNC2(xdrs,
		 (char **) & objp->wra_u.wra_val_u,
		 (u_int *) & objp->wra_u.wra_len_u,
		 NFS_MAXDATA)) {
    return (FALSE);
  }
  return (TRUE);
}