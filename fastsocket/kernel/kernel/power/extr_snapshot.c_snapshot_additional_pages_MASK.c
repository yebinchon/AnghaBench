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
struct zone {unsigned int spanned_pages; } ;
struct bm_block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BM_BITS_PER_BLOCK ; 
 unsigned int FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_SIZE ; 

unsigned int FUNC1(struct zone *zone)
{
	unsigned int res;

	res = FUNC0(zone->spanned_pages, BM_BITS_PER_BLOCK);
	res += FUNC0(res * sizeof(struct bm_block), PAGE_SIZE);
	return 2 * res;
}