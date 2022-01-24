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
typedef  int /*<<< orphan*/  u64 ;
struct svc_fh {TYPE_1__* fh_export; TYPE_3__* fh_dentry; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_8__ {TYPE_2__* i_sb; } ;
struct TYPE_7__ {TYPE_4__* d_inode; } ;
struct TYPE_6__ {int /*<<< orphan*/  s_dev; } ;
struct TYPE_5__ {scalar_t__ ex_uuid; int /*<<< orphan*/  ex_fsid; } ;

/* Variables and functions */
#define  FSIDSOURCE_DEV 130 
#define  FSIDSOURCE_FSID 129 
#define  FSIDSOURCE_UUID 128 
 int FUNC0 (struct svc_fh*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32 *FUNC3(__be32 *p, struct svc_fh *fhp)
{
	u64 f;
	switch(FUNC0(fhp)) {
	default:
	case FSIDSOURCE_DEV:
		p = FUNC2(p, (u64)FUNC1
				     (fhp->fh_dentry->d_inode->i_sb->s_dev));
		break;
	case FSIDSOURCE_FSID:
		p = FUNC2(p, (u64) fhp->fh_export->ex_fsid);
		break;
	case FSIDSOURCE_UUID:
		f = ((u64*)fhp->fh_export->ex_uuid)[0];
		f ^= ((u64*)fhp->fh_export->ex_uuid)[1];
		p = FUNC2(p, f);
		break;
	}
	return p;
}