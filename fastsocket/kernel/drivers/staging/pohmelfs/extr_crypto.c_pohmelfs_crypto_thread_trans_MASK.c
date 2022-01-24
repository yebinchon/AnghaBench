#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ cipher; scalar_t__ hash; } ;
struct pohmelfs_crypto_thread {int /*<<< orphan*/  psb; struct netfs_trans* trans; int /*<<< orphan*/ * page; TYPE_1__ eng; } ;
struct netfs_trans {TYPE_1__* eng; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netfs_trans*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pohmelfs_crypto_thread*) ; 
 int FUNC2 (struct pohmelfs_crypto_thread*) ; 
 int FUNC3 (struct pohmelfs_crypto_thread*) ; 

__attribute__((used)) static int FUNC4(struct pohmelfs_crypto_thread *t)
{
	struct netfs_trans *trans;
	int err = 0;

	trans = t->trans;
	trans->eng = NULL;

	if (t->eng.hash) {
		err = FUNC3(t);
		if (err)
			goto out_complete;
	}

	if (t->eng.cipher) {
		err = FUNC2(t);
		if (err)
			goto out_complete;
		trans->eng = &t->eng;
	}

out_complete:
	t->page = NULL;
	t->trans = NULL;

	if (!trans->eng)
		FUNC1(t);

	FUNC0(trans, t->psb, err);
	return err;
}