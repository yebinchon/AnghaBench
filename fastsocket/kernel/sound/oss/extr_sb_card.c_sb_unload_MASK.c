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
struct sb_card_config {int /*<<< orphan*/  mpucnf; scalar_t__ mpu; int /*<<< orphan*/  conf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sb_card_config*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct sb_card_config *scc)
{
	FUNC1(&scc->conf, 0);
	if(scc->mpu)
		FUNC2(&scc->mpucnf);
	FUNC0(scc);
}