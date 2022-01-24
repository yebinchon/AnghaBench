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
typedef  int /*<<< orphan*/  u_int ;
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
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

bool_t
FUNC4(register XDR *xdrs, char **objpp, u_int obj_size, XDRPROC_T_TYPE xdr_obj)
{
  if (FUNC0(D_XDRTRACE))
    FUNC1(XLOG_DEBUG, "xdr_pointer:");

  bool_t more_data;

  more_data = (*objpp != NULL);
  if (!FUNC2(xdrs, &more_data)) {
    return (FALSE);
  }
  if (!more_data) {
    *objpp = NULL;
    return (TRUE);
  }

  return (FUNC3(xdrs, objpp, obj_size, xdr_obj));
}