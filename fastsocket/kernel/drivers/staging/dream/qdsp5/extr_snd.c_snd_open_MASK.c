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
struct snd_ctxt {int opened; int /*<<< orphan*/  lock; int /*<<< orphan*/ * ept; } ;
struct inode {int dummy; } ;
struct file {struct snd_ctxt* private_data; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  MSM_RPC_UNINTERRUPTIBLE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  RPC_SND_PROG ; 
 int /*<<< orphan*/  RPC_SND_VERS ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct snd_ctxt the_snd ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct snd_ctxt *snd = &the_snd;
	int rc = 0;

	FUNC3(&snd->lock);
	if (snd->opened == 0) {
		if (snd->ept == NULL) {
			snd->ept = FUNC2(RPC_SND_PROG, RPC_SND_VERS,
					MSM_RPC_UNINTERRUPTIBLE);
			if (FUNC0(snd->ept)) {
				rc = FUNC1(snd->ept);
				snd->ept = NULL;
				FUNC5("snd: failed to connect snd svc\n");
				goto err;
			}
		}
		file->private_data = snd;
		snd->opened = 1;
	} else {
		FUNC5("snd already opened.\n");
		rc = -EBUSY;
	}

err:
	FUNC4(&snd->lock);
	return rc;
}