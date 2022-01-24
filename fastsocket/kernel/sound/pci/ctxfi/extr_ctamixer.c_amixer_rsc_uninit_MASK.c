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
struct amixer {int /*<<< orphan*/ * sum; int /*<<< orphan*/ * input; int /*<<< orphan*/ * ops; int /*<<< orphan*/  rsc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct amixer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct amixer *amixer)
{
	FUNC0(amixer, NULL, 0, NULL);
	FUNC1(&amixer->rsc);
	amixer->ops = NULL;
	amixer->input = NULL;
	amixer->sum = NULL;
	return 0;
}