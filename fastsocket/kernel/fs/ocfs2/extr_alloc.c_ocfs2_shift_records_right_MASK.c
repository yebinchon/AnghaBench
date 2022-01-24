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
struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int /*<<< orphan*/ * l_recs; int /*<<< orphan*/  l_count; int /*<<< orphan*/  l_next_free_rec; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct ocfs2_extent_list *el)
{
	int next_free = FUNC1(el->l_next_free_rec);
	int count = FUNC1(el->l_count);
	unsigned int num_bytes;

	FUNC0(!next_free);
	/* This will cause us to go off the end of our extent list. */
	FUNC0(next_free >= count);

	num_bytes = sizeof(struct ocfs2_extent_rec) * next_free;

	FUNC2(&el->l_recs[1], &el->l_recs[0], num_bytes);
}