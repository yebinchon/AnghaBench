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
struct ocfs2_refcount_rec {int /*<<< orphan*/  r_clusters; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct ocfs2_refcount_rec*) ; 

__attribute__((used)) static int FUNC2(struct ocfs2_refcount_rec *prev,
					   struct ocfs2_refcount_rec *next)
{
	if (FUNC1(prev) + FUNC0(prev->r_clusters) <=
		FUNC1(next))
		return 1;

	return 0;
}