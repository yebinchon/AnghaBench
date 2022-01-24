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
struct dccp_feat_entry {int /*<<< orphan*/  val; int /*<<< orphan*/  feat_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct dccp_feat_entry*) ; 

__attribute__((used)) static void FUNC2(struct dccp_feat_entry *entry)
{
	if (entry != NULL) {
		FUNC0(entry->feat_num, &entry->val);
		FUNC1(entry);
	}
}