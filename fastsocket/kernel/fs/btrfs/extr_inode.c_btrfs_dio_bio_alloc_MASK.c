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
typedef  int /*<<< orphan*/  u64 ;
struct block_device {int dummy; } ;
struct bio {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int FUNC0 (struct block_device*) ; 
 struct bio* FUNC1 (struct block_device*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct bio *FUNC2(struct block_device *bdev,
				       u64 first_sector, gfp_t gfp_flags)
{
	int nr_vecs = FUNC0(bdev);
	return FUNC1(bdev, first_sector, nr_vecs, gfp_flags);
}