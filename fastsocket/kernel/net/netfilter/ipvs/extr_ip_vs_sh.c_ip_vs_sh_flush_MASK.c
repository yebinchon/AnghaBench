#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ip_vs_sh_bucket {TYPE_1__* dest; } ;
struct TYPE_2__ {int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int IP_VS_SH_TAB_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ip_vs_sh_bucket *tbl)
{
	int i;
	struct ip_vs_sh_bucket *b;

	b = tbl;
	for (i=0; i<IP_VS_SH_TAB_SIZE; i++) {
		if (b->dest) {
			FUNC0(&b->dest->refcnt);
			b->dest = NULL;
		}
		b++;
	}
}