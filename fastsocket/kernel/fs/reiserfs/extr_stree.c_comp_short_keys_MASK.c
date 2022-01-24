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
struct reiserfs_key {int /*<<< orphan*/  k_objectid; int /*<<< orphan*/  k_dir_id; } ;
struct TYPE_2__ {scalar_t__ k_dir_id; scalar_t__ k_objectid; } ;
struct cpu_key {TYPE_1__ on_disk_key; } ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

inline int FUNC1(const struct reiserfs_key *le_key,
			   const struct cpu_key *cpu_key)
{
	__u32 n;
	n = FUNC0(le_key->k_dir_id);
	if (n < cpu_key->on_disk_key.k_dir_id)
		return -1;
	if (n > cpu_key->on_disk_key.k_dir_id)
		return 1;
	n = FUNC0(le_key->k_objectid);
	if (n < cpu_key->on_disk_key.k_objectid)
		return -1;
	if (n > cpu_key->on_disk_key.k_objectid)
		return 1;
	return 0;
}