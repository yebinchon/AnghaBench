#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dentry {TYPE_4__* d_sb; } ;
struct cred {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_6__ {TYPE_1__ path; } ;
struct TYPE_7__ {TYPE_2__ fs; } ;
struct common_audit_data {TYPE_3__ u; } ;
struct TYPE_8__ {int /*<<< orphan*/  s_root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILESYSTEM__GETATTR ; 
 int /*<<< orphan*/  FS ; 
 struct cred* FUNC1 () ; 
 int FUNC2 (struct cred const*,TYPE_4__*,int /*<<< orphan*/ ,struct common_audit_data*) ; 

__attribute__((used)) static int FUNC3(struct dentry *dentry)
{
	const struct cred *cred = FUNC1();
	struct common_audit_data ad;

	FUNC0(&ad, FS);
	ad.u.fs.path.dentry = dentry->d_sb->s_root;
	return FUNC2(cred, dentry->d_sb, FILESYSTEM__GETATTR, &ad);
}