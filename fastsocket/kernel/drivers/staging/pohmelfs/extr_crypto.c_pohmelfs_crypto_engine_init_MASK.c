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
struct pohmelfs_sb {scalar_t__ cipher_string; scalar_t__ hash_string; } ;
struct pohmelfs_crypto_engine {int /*<<< orphan*/  data; int /*<<< orphan*/ * hash; int /*<<< orphan*/ * cipher; int /*<<< orphan*/  size; scalar_t__ page_num; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (struct pohmelfs_sb*) ; 
 int /*<<< orphan*/ * FUNC6 (struct pohmelfs_sb*) ; 

int FUNC7(struct pohmelfs_crypto_engine *e, struct pohmelfs_sb *psb)
{
	int err;

	e->page_num = 0;

	e->size = PAGE_SIZE;
	e->data = FUNC4(e->size, GFP_KERNEL);
	if (!e->data) {
		err = -ENOMEM;
		goto err_out_exit;
	}

	if (psb->hash_string) {
		e->hash = FUNC6(psb);
		if (FUNC0(e->hash)) {
			err = FUNC1(e->hash);
			e->hash = NULL;
			goto err_out_free;
		}
	}

	if (psb->cipher_string) {
		e->cipher = FUNC5(psb);
		if (FUNC0(e->cipher)) {
			err = FUNC1(e->cipher);
			e->cipher = NULL;
			goto err_out_free_hash;
		}
	}

	return 0;

err_out_free_hash:
	FUNC2(e->hash);
err_out_free:
	FUNC3(e->data);
err_out_exit:
	return err;
}