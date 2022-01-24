#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct btrfs_root {int dummy; } ;
struct bio_vec {TYPE_2__* bv_page; } ;
struct bio {int bi_vcnt; struct bio_vec* bi_io_vec; } ;
struct TYPE_6__ {struct btrfs_root* root; } ;
struct TYPE_5__ {TYPE_1__* mapping; } ;
struct TYPE_4__ {int /*<<< orphan*/  host; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (struct btrfs_root*,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct bio *bio)
{
	struct bio_vec *bvec = bio->bi_io_vec;
	int bio_index = 0;
	struct btrfs_root *root;
	int ret = 0;

	FUNC1(bio->bi_vcnt <= 0);
	while (bio_index < bio->bi_vcnt) {
		root = FUNC0(bvec->bv_page->mapping->host)->root;
		ret = FUNC2(root, bvec->bv_page);
		if (ret)
			break;
		bio_index++;
		bvec++;
	}
	return ret;
}