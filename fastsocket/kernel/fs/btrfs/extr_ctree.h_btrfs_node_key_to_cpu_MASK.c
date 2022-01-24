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
struct extent_buffer {int dummy; } ;
struct btrfs_key {int dummy; } ;
struct btrfs_disk_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct btrfs_key*,struct btrfs_disk_key*) ; 
 int /*<<< orphan*/  FUNC1 (struct extent_buffer*,struct btrfs_disk_key*,int) ; 

__attribute__((used)) static inline void FUNC2(struct extent_buffer *eb,
				  struct btrfs_key *key, int nr)
{
	struct btrfs_disk_key disk_key;
	FUNC1(eb, &disk_key, nr);
	FUNC0(key, &disk_key);
}