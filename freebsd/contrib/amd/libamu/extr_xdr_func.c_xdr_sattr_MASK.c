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
struct TYPE_3__ {int /*<<< orphan*/  sa_mtime; int /*<<< orphan*/  sa_atime; int /*<<< orphan*/  sa_size; int /*<<< orphan*/  sa_gid; int /*<<< orphan*/  sa_uid; int /*<<< orphan*/  sa_mode; } ;
typedef  TYPE_1__ nfssattr ;
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
FUNC4(XDR *xdrs, nfssattr *objp)
{
  if (FUNC0(D_XDRTRACE))
    FUNC1(XLOG_DEBUG, "xdr_sattr:");

  if (!FUNC3(xdrs, &objp->sa_mode)) {
    return (FALSE);
  }
  if (!FUNC3(xdrs, &objp->sa_uid)) {
    return (FALSE);
  }
  if (!FUNC3(xdrs, &objp->sa_gid)) {
    return (FALSE);
  }
  if (!FUNC3(xdrs, &objp->sa_size)) {
    return (FALSE);
  }
  if (!FUNC2(xdrs, &objp->sa_atime)) {
    return (FALSE);
  }
  if (!FUNC2(xdrs, &objp->sa_mtime)) {
    return (FALSE);
  }
  return (TRUE);
}