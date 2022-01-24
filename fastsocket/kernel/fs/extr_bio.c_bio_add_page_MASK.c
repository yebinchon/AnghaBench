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
struct request_queue {int dummy; } ;
struct page {int dummy; } ;
struct bio {int /*<<< orphan*/  bi_bdev; } ;

/* Variables and functions */
 int FUNC0 (struct request_queue*,struct bio*,struct page*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 struct request_queue* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 

int FUNC3(struct bio *bio, struct page *page, unsigned int len,
		 unsigned int offset)
{
	struct request_queue *q = FUNC1(bio->bi_bdev);
	return FUNC0(q, bio, page, len, offset, FUNC2(q));
}