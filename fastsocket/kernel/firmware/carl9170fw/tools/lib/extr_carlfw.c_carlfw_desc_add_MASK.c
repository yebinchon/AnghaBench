#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  list; } ;
struct carlfw_list_entry {TYPE_1__ h; } ;
struct carlfw {int dummy; } ;
struct carl9170fw_desc_head {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  list; } ;
struct TYPE_6__ {TYPE_2__ h; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct carlfw_list_entry*) ; 
 int FUNC1 (struct carlfw_list_entry*) ; 
 struct carlfw_list_entry* FUNC2 (struct carlfw*,struct carl9170fw_desc_head const*) ; 
 TYPE_3__* FUNC3 (struct carl9170fw_desc_head*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC5(struct carlfw *fw,
		    const struct carl9170fw_desc_head *desc,
		    struct carl9170fw_desc_head *prev,
		    struct carl9170fw_desc_head *next)
{
	struct carlfw_list_entry *tmp;

	tmp = FUNC2(fw, desc);
	if (FUNC0(tmp))
		return FUNC1(tmp);

	FUNC4(&tmp->h.list, &((FUNC3(prev))->h.list),
		 &((FUNC3(next))->h.list));
	return 0;
}