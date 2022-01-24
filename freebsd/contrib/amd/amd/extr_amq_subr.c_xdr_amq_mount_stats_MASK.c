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
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_3__ {int /*<<< orphan*/  as_uerr; int /*<<< orphan*/  as_merr; int /*<<< orphan*/  as_mok; int /*<<< orphan*/  as_stale; int /*<<< orphan*/  as_drops; } ;
typedef  TYPE_1__ amq_mount_stats ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC1(XDR *xdrs, amq_mount_stats *objp)
{
  if (!FUNC0(xdrs, &objp->as_drops)) {
    return (FALSE);
  }
  if (!FUNC0(xdrs, &objp->as_stale)) {
    return (FALSE);
  }
  if (!FUNC0(xdrs, &objp->as_mok)) {
    return (FALSE);
  }
  if (!FUNC0(xdrs, &objp->as_merr)) {
    return (FALSE);
  }
  if (!FUNC0(xdrs, &objp->as_uerr)) {
    return (FALSE);
  }
  return (TRUE);
}