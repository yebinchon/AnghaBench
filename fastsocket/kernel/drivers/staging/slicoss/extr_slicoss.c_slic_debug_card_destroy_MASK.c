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
struct sliccard {int card_size; int /*<<< orphan*/ * debugfs_dir; int /*<<< orphan*/ * debugfs_cardinfo; struct adapter** adapter; } ;
struct adapter {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct adapter*) ; 

__attribute__((used)) static void FUNC2(struct sliccard *card)
{
	int i;

	for (i = 0; i < card->card_size; i++) {
		struct adapter *adapter;

		adapter = card->adapter[i];
		if (adapter)
			FUNC1(adapter);
	}
	if (card->debugfs_cardinfo) {
		FUNC0(card->debugfs_cardinfo);
		card->debugfs_cardinfo = NULL;
	}
	if (card->debugfs_dir) {
		FUNC0(card->debugfs_dir);
		card->debugfs_dir = NULL;
	}
}