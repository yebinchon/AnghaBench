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
struct ocfs2_path {TYPE_1__* p_node; } ;
struct TYPE_2__ {int /*<<< orphan*/ * el; int /*<<< orphan*/ * bh; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int OCFS2_MAX_PATH_DEPTH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ocfs2_path*) ; 
 scalar_t__ FUNC3 (struct ocfs2_path*) ; 

__attribute__((used)) static void FUNC4(struct ocfs2_path *dest, struct ocfs2_path *src)
{
	int i;

	FUNC0(FUNC3(dest) != FUNC3(src));
	FUNC0(FUNC2(dest) != FUNC2(src));

	for(i = 1; i < OCFS2_MAX_PATH_DEPTH; i++) {
		FUNC1(dest->p_node[i].bh);

		dest->p_node[i].bh = src->p_node[i].bh;
		dest->p_node[i].el = src->p_node[i].el;

		src->p_node[i].bh = NULL;
		src->p_node[i].el = NULL;
	}
}