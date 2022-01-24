#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ht_elt ;
struct TYPE_3__ {int num_buckets; int /*<<< orphan*/ ** buckets; scalar_t__ size; } ;
typedef  TYPE_1__ HT ;

/* Variables and functions */
 void* FUNC0 (int) ; 

__attribute__((used)) static HT *
FUNC1(void)
{
	HT *ht;
	size_t u;

	ht = FUNC0(sizeof *ht);
	ht->size = 0;
	ht->num_buckets = 8;
	ht->buckets = FUNC0(ht->num_buckets * sizeof(ht_elt *));
	for (u = 0; u < ht->num_buckets; u ++) {
		ht->buckets[u] = NULL;
	}
	return ht;
}