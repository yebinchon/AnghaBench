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
typedef  int /*<<< orphan*/  nfsentry ;
struct TYPE_3__ {int /*<<< orphan*/  dl_eof; int /*<<< orphan*/  dl_entries; } ;
typedef  TYPE_1__ nfsdirlist ;
typedef  int /*<<< orphan*/  bool_t ;
typedef  int /*<<< orphan*/  XDRPROC_T_TYPE ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  D_XDRTRACE ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  XLOG_DEBUG ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ xdr_entry ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ ) ; 

bool_t
FUNC4(XDR *xdrs, nfsdirlist *objp)
{
  if (FUNC0(D_XDRTRACE))
    FUNC1(XLOG_DEBUG, "xdr_dirlist:");

  if (!FUNC3(xdrs, (char **) &objp->dl_entries, sizeof(nfsentry), (XDRPROC_T_TYPE) xdr_entry)) {
    return (FALSE);
  }
  if (!FUNC2(xdrs, &objp->dl_eof)) {
    return (FALSE);
  }
  return (TRUE);
}