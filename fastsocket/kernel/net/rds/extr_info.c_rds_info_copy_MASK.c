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
struct rds_info_iterator {scalar_t__ offset; int /*<<< orphan*/ * pages; int /*<<< orphan*/ * addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,unsigned long) ; 
 unsigned long FUNC3 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,unsigned long,void*,unsigned long) ; 

void FUNC5(struct rds_info_iterator *iter, void *data,
		   unsigned long bytes)
{
	unsigned long this;

	while (bytes) {
		if (!iter->addr)
			iter->addr = FUNC0(*iter->pages, KM_USER0);

		this = FUNC3(bytes, PAGE_SIZE - iter->offset);

		FUNC4("page %p addr %p offset %lu this %lu data %p "
			  "bytes %lu\n", *iter->pages, iter->addr,
			  iter->offset, this, data, bytes);

		FUNC2(iter->addr + iter->offset, data, this);

		data += this;
		bytes -= this;
		iter->offset += this;

		if (iter->offset == PAGE_SIZE) {
			FUNC1(iter->addr, KM_USER0);
			iter->addr = NULL;
			iter->offset = 0;
			iter->pages++;
		}
	}
}