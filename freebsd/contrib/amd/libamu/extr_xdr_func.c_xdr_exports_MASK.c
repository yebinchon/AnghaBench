#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  exports ;
typedef  int /*<<< orphan*/  exportnode ;
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
 scalar_t__ xdr_exportnode ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ ) ; 

bool_t
FUNC3(XDR *xdrs, exports *objp)
{
  if (FUNC0(D_XDRTRACE))
    FUNC1(XLOG_DEBUG, "xdr_exports:");

  if (!FUNC2(xdrs, (char **) objp, sizeof(exportnode), (XDRPROC_T_TYPE) xdr_exportnode)) {
    return (FALSE);
  }
  return (TRUE);
}