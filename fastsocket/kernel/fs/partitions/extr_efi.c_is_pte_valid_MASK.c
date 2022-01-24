#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct TYPE_3__ {int /*<<< orphan*/  ending_lba; int /*<<< orphan*/  starting_lba; int /*<<< orphan*/  partition_type_guid; } ;
typedef  TYPE_1__ gpt_entry ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_GUID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ const FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int
FUNC2(const gpt_entry *pte, const u64 lastlba)
{
	if ((!FUNC0(pte->partition_type_guid, NULL_GUID)) ||
	    FUNC1(pte->starting_lba) > lastlba         ||
	    FUNC1(pte->ending_lba)   > lastlba)
		return 0;
	return 1;
}