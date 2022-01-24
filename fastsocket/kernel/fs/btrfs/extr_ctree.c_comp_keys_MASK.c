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
struct btrfs_key {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct btrfs_key*,struct btrfs_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct btrfs_key*,struct btrfs_disk_key*) ; 

__attribute__((used)) static int FUNC2(struct btrfs_disk_key *disk, struct btrfs_key *k2)
{
	struct btrfs_key k1;

	FUNC1(&k1, disk);

	return FUNC0(&k1, k2);
}