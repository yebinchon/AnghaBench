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
struct ocfs2_extent_list {int /*<<< orphan*/  l_next_free_rec; int /*<<< orphan*/ * l_recs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct ocfs2_extent_list *el)
{
	int size, num_recs = FUNC2(el->l_next_free_rec);

	FUNC0(num_recs == 0);

	if (FUNC5(&el->l_recs[0])) {
		num_recs--;
		size = num_recs * sizeof(struct ocfs2_extent_rec);
		FUNC3(&el->l_recs[0], &el->l_recs[1], size);
		FUNC4(&el->l_recs[num_recs], 0,
		       sizeof(struct ocfs2_extent_rec));
		el->l_next_free_rec = FUNC1(num_recs);
	}
}