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
struct perf_kvm_stat {int /*<<< orphan*/  sort_key; int /*<<< orphan*/  compare; } ;
struct TYPE_2__ {int /*<<< orphan*/  key; scalar_t__ name; } ;

/* Variables and functions */
 TYPE_1__* keys ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC2(struct perf_kvm_stat *kvm)
{
	int i;

	for (i = 0; keys[i].name; i++) {
		if (!FUNC1(keys[i].name, kvm->sort_key)) {
			kvm->compare = keys[i].key;
			return true;
		}
	}

	FUNC0("Unknown compare key:%s\n", kvm->sort_key);
	return false;
}