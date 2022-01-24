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
struct TYPE_2__ {scalar_t__ empty_lebs; } ;
struct ubifs_info {scalar_t__ main_lebs; int /*<<< orphan*/  lp_mutex; TYPE_1__ lst; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static inline void FUNC3(struct ubifs_info *c)
{
	FUNC2(FUNC0(&c->lp_mutex));
	FUNC2(c->lst.empty_lebs >= 0 &&
		     c->lst.empty_lebs <= c->main_lebs);
	FUNC1(&c->lp_mutex);
}