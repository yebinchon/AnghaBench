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
typedef  int /*<<< orphan*/  u_int ;
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_3__ {int /*<<< orphan*/  amq_map_info_list_len; int /*<<< orphan*/  amq_map_info_list_val; } ;
typedef  TYPE_1__ amq_map_info_list ;
typedef  int /*<<< orphan*/  amq_map_info ;
typedef  int /*<<< orphan*/  XDRPROC_T_TYPE ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ xdr_amq_map_info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

bool_t
FUNC1(XDR *xdrs, amq_map_info_list *objp)
{
  if (!FUNC0(xdrs,
		 (char **) ((voidp) &objp->amq_map_info_list_val),
		 (u_int *) &objp->amq_map_info_list_len,
		 ~0,
		 sizeof(amq_map_info),
		 (XDRPROC_T_TYPE) xdr_amq_map_info)) {
    return (FALSE);
  }
  return (TRUE);
}