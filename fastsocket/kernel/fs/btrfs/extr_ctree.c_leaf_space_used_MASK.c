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
struct btrfs_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct extent_buffer*) ; 
 int FUNC2 (struct extent_buffer*,int) ; 
 int FUNC3 (struct extent_buffer*,int) ; 
 int FUNC4 (int,int) ; 

__attribute__((used)) static int FUNC5(struct extent_buffer *l, int start, int nr)
{
	int data_len;
	int nritems = FUNC1(l);
	int end = FUNC4(nritems, start + nr) - 1;

	if (!nr)
		return 0;
	data_len = FUNC2(l, start);
	data_len = data_len - FUNC3(l, end);
	data_len += sizeof(struct btrfs_item) * nr;
	FUNC0(data_len < 0);
	return data_len;
}