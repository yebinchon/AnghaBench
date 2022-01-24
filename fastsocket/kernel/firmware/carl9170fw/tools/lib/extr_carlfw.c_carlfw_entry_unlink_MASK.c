#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  list; } ;
struct TYPE_3__ {int /*<<< orphan*/  length; } ;
struct carlfw_list_entry {TYPE_2__ h; TYPE_1__ head; } ;
struct carlfw {int /*<<< orphan*/  desc_list_len; int /*<<< orphan*/  desc_list_entries; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct carlfw *fw,
	struct carlfw_list_entry *entry)
{
	fw->desc_list_entries--;
	fw->desc_list_len -= FUNC0(entry->head.length);
	FUNC1(&entry->h.list);
}