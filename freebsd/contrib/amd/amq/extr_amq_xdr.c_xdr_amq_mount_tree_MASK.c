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
typedef  int /*<<< orphan*/  bool_t ;
struct TYPE_3__ {int /*<<< orphan*/  mt_child; int /*<<< orphan*/  mt_next; int /*<<< orphan*/  mt_statfs; int /*<<< orphan*/  mt_readlink; int /*<<< orphan*/  mt_readdir; int /*<<< orphan*/  mt_lookup; int /*<<< orphan*/  mt_getattr; int /*<<< orphan*/  mt_mountuid; int /*<<< orphan*/  mt_mounttime; int /*<<< orphan*/  mt_type; int /*<<< orphan*/  mt_mountpoint; int /*<<< orphan*/  mt_directory; int /*<<< orphan*/  mt_mountinfo; } ;
typedef  TYPE_1__ amq_mount_tree ;
typedef  int /*<<< orphan*/  XDRPROC_T_TYPE ;
typedef  int /*<<< orphan*/  XDR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

bool_t
FUNC5(XDR *xdrs, amq_mount_tree *objp)
{

  if (!FUNC0(xdrs, &objp->mt_mountinfo)) {
    return (FALSE);
  }

  if (!FUNC0(xdrs, &objp->mt_directory)) {
    return (FALSE);
  }

  if (!FUNC0(xdrs, &objp->mt_mountpoint)) {
    return (FALSE);
  }

  if (!FUNC0(xdrs, &objp->mt_type)) {
    return (FALSE);
  }

  if (!FUNC3(xdrs, &objp->mt_mounttime)) {
    return (FALSE);
  }

  if (!FUNC4(xdrs, &objp->mt_mountuid)) {
    return (FALSE);
  }

  if (!FUNC1(xdrs, &objp->mt_getattr)) {
    return (FALSE);
  }

  if (!FUNC1(xdrs, &objp->mt_lookup)) {
    return (FALSE);
  }

  if (!FUNC1(xdrs, &objp->mt_readdir)) {
    return (FALSE);
  }

  if (!FUNC1(xdrs, &objp->mt_readlink)) {
    return (FALSE);
  }

  if (!FUNC1(xdrs, &objp->mt_statfs)) {
    return (FALSE);
  }

  if (!FUNC2(xdrs,
		   (char **) ((voidp) &objp->mt_next),
		   sizeof(amq_mount_tree),
		   (XDRPROC_T_TYPE) xdr_amq_mount_tree)) {
    return (FALSE);
  }

  if (!FUNC2(xdrs,
		   (char **) ((voidp) &objp->mt_child),
		   sizeof(amq_mount_tree),
		   (XDRPROC_T_TYPE) xdr_amq_mount_tree)) {
    return (FALSE);
  }

  return (TRUE);
}