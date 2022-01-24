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
struct dst_crypto_ctl {scalar_t__* cipher_algo; scalar_t__* hash_algo; } ;
struct dst_node {int /*<<< orphan*/  cipher_key; int /*<<< orphan*/  hash_key; int /*<<< orphan*/  max_pages; struct dst_crypto_ctl crypto; } ;
struct dst_crypto_engine {int /*<<< orphan*/  data; int /*<<< orphan*/ * hash; int /*<<< orphan*/ * cipher; int /*<<< orphan*/  size; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct dst_crypto_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dst_crypto_engine*) ; 
 int /*<<< orphan*/ * FUNC5 (struct dst_crypto_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (struct dst_crypto_ctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct dst_crypto_engine *e, struct dst_node *n)
{
	int err;
	struct dst_crypto_ctl *ctl = &n->crypto;

	err = FUNC3(e, n->max_pages);
	if (err)
		goto err_out_exit;

	e->size = PAGE_SIZE;
	e->data = FUNC8(e->size, GFP_KERNEL);
	if (!e->data) {
		err = -ENOMEM;
		goto err_out_free_pages;
	}

	if (ctl->hash_algo[0]) {
		e->hash = FUNC6(ctl, n->hash_key);
		if (FUNC0(e->hash)) {
			err = FUNC1(e->hash);
			e->hash = NULL;
			goto err_out_free;
		}
	}

	if (ctl->cipher_algo[0]) {
		e->cipher = FUNC5(ctl, n->cipher_key);
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
	FUNC7(e->data);
err_out_free_pages:
	FUNC4(e);
err_out_exit:
	return err;
}