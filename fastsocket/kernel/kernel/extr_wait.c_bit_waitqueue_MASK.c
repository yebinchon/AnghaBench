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

/* Variables and functions */
 int BITS_PER_LONG ; 
 size_t FUNC0 (unsigned long,int /*<<< orphan*/ ) ; 
 struct zone* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 

wait_queue_head_t *FUNC3(void *word, int bit)
{
	const int shift = BITS_PER_LONG == 32 ? 5 : 6;
	const struct zone *zone = FUNC1(FUNC2(word));
	unsigned long val = (unsigned long)word << shift | bit;

	return &zone->wait_table[FUNC0(val, zone->wait_table_bits)];
}