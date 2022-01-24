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
struct inode {int dummy; } ;
struct file {TYPE_1__* private_data; } ;
struct TYPE_3__ {int connected; scalar_t__ blocked; int /*<<< orphan*/  release; } ;
struct cuse_conn {TYPE_1__ fc; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cuse_fc_release ; 
 int FUNC1 (struct cuse_conn*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 struct cuse_conn* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct cuse_conn *cc;
	int rc;

	/* set up cuse_conn */
	cc = FUNC4(sizeof(*cc), GFP_KERNEL);
	if (!cc)
		return -ENOMEM;

	FUNC2(&cc->fc);

	FUNC0(&cc->list);
	cc->fc.release = cuse_fc_release;

	cc->fc.connected = 1;
	cc->fc.blocked = 0;
	rc = FUNC1(cc);
	if (rc) {
		FUNC3(&cc->fc);
		return rc;
	}
	file->private_data = &cc->fc;	/* channel owns base reference to cc */

	return 0;
}