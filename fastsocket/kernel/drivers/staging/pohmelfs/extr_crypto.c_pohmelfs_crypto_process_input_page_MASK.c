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
typedef  int /*<<< orphan*/  u64 ;
struct pohmelfs_crypto_input_action_data {unsigned int size; int /*<<< orphan*/  iv; struct pohmelfs_crypto_engine* e; struct page* page; } ;
struct pohmelfs_crypto_engine {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  pohmelfs_crypt_input_page_action ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pohmelfs_crypto_input_action_data*) ; 

int FUNC4(struct pohmelfs_crypto_engine *e,
		struct page *page, unsigned int size, u64 iv)
{
	struct inode *inode = page->mapping->host;
	struct pohmelfs_crypto_input_action_data act;
	int err = -ENOENT;

	act.page = page;
	act.e = e;
	act.size = size;
	act.iv = iv;

	err = FUNC3(FUNC0(inode->i_sb),
			pohmelfs_crypt_input_page_action, &act);
	if (err)
		goto err_out_exit;

	return 0;

err_out_exit:
	FUNC1(page);
	FUNC2(page);

	return err;
}