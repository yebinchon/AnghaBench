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
struct pohmelfs_crypto_engine {int /*<<< orphan*/  iv; } ;
struct pohmelfs_crypto_thread {int /*<<< orphan*/  size; struct page* page; struct pohmelfs_crypto_engine eng; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 int FUNC5 (struct pohmelfs_crypto_engine*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct pohmelfs_crypto_thread*) ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 

__attribute__((used)) static int FUNC8(struct pohmelfs_crypto_thread *t)
{
	struct pohmelfs_crypto_engine *e = &t->eng;
	struct page *page = t->page;
	int err;

	FUNC3(!FUNC0(page));

	err = FUNC5(e, e->iv, NULL, page, t->size);
	if (!err)
		FUNC2(page);
	else
		FUNC1(page);
	FUNC7(page);
	FUNC4(page);

	FUNC6(t);

	return err;
}