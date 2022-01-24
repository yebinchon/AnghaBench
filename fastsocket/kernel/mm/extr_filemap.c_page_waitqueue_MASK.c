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
typedef  int /*<<< orphan*/  wait_queue_head_t ;
struct zone {int /*<<< orphan*/  wait_table_bits; int /*<<< orphan*/ * wait_table; } ;
struct page {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (struct page*,int /*<<< orphan*/ ) ; 
 struct zone* FUNC1 (struct page*) ; 

__attribute__((used)) static wait_queue_head_t *FUNC2(struct page *page)
{
	const struct zone *zone = FUNC1(page);

	return &zone->wait_table[FUNC0(page, zone->wait_table_bits)];
}