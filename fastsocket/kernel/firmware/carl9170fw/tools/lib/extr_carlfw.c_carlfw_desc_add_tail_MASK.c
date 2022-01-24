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
struct TYPE_2__ {int /*<<< orphan*/  list; } ;
struct carlfw_list_entry {TYPE_1__ h; } ;
struct carlfw {int /*<<< orphan*/  desc_list; } ;
struct carl9170fw_desc_head {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct carlfw_list_entry*) ; 
 int FUNC1 (struct carlfw_list_entry*) ; 
 struct carlfw_list_entry* FUNC2 (struct carlfw*,struct carl9170fw_desc_head const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(struct carlfw *fw,
	const struct carl9170fw_desc_head *desc)
{
	struct carlfw_list_entry *tmp;

	tmp = FUNC2(fw, desc);
	if (FUNC0(tmp))
		return FUNC1(tmp);

	FUNC3(&tmp->h.list, &fw->desc_list);
	return 0;
}