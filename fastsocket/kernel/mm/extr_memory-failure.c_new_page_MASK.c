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
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_HIGHUSER_MOVABLE ; 
 scalar_t__ FUNC0 (struct page*) ; 
 struct page* FUNC1 (int /*<<< orphan*/ ,int) ; 
 struct page* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct page*) ; 

__attribute__((used)) static struct page *FUNC6(struct page *p, unsigned long private, int **x)
{
	int nid = FUNC5(p);
	if (FUNC0(p))
		return FUNC1(FUNC4(FUNC3(p)),
						   nid);
	else
		return FUNC2(nid, GFP_HIGHUSER_MOVABLE, 0);
}