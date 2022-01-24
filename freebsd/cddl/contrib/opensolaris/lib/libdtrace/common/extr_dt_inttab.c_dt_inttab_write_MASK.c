#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_4__ {TYPE_2__* int_head; } ;
typedef  TYPE_1__ dt_inttab_t ;
struct TYPE_5__ {int /*<<< orphan*/  inh_value; struct TYPE_5__* inh_next; } ;
typedef  TYPE_2__ dt_inthash_t ;

/* Variables and functions */

void
FUNC0(const dt_inttab_t *ip, uint64_t *dst)
{
	const dt_inthash_t *hp;

	for (hp = ip->int_head; hp != NULL; hp = hp->inh_next)
		*dst++ = hp->inh_value;
}