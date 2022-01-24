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
typedef  scalar_t__ u32 ;
struct audit_watch {int dummy; } ;
struct audit_krule {scalar_t__ listnr; struct audit_watch* watch; scalar_t__ tree; scalar_t__ inode_f; } ;

/* Variables and functions */
 scalar_t__ AUDIT_FILTER_EXIT ; 
 scalar_t__ Audit_equal ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 scalar_t__ FUNC0 (struct audit_watch*) ; 
 int FUNC1 (struct audit_watch*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_watch*) ; 
 int /*<<< orphan*/  audit_ih ; 
 struct audit_watch* FUNC3 (char*) ; 

int FUNC4(struct audit_krule *krule, char *path, int len, u32 op)
{
	struct audit_watch *watch;

	if (!audit_ih)
		return -EOPNOTSUPP;

	if (path[0] != '/' || path[len-1] == '/' ||
	    krule->listnr != AUDIT_FILTER_EXIT ||
	    op != Audit_equal ||
	    krule->inode_f || krule->watch || krule->tree)
		return -EINVAL;

	watch = FUNC3(path);
	if (FUNC0(watch))
		return FUNC1(watch);

	FUNC2(watch);
	krule->watch = watch;

	return 0;
}