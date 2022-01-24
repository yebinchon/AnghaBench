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
struct tcf_hashinfo {int /*<<< orphan*/  lock; struct tcf_common** htab; int /*<<< orphan*/  hmask; } ;
struct tcf_common {struct tcf_common* tcfc_next; int /*<<< orphan*/  tcfc_index; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(struct tcf_common *p, struct tcf_hashinfo *hinfo)
{
	unsigned int h = FUNC0(p->tcfc_index, hinfo->hmask);

	FUNC1(hinfo->lock);
	p->tcfc_next = hinfo->htab[h];
	hinfo->htab[h] = p;
	FUNC2(hinfo->lock);
}