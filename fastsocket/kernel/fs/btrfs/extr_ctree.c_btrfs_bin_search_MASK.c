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

/* Variables and functions */
 int FUNC0 (struct extent_buffer*,struct btrfs_key*,int,int*) ; 

int FUNC1(struct extent_buffer *eb, struct btrfs_key *key,
		     int level, int *slot)
{
	return FUNC0(eb, key, level, slot);
}