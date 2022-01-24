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
struct leaf_info {int plen; int /*<<< orphan*/  falh; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct leaf_info* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct leaf_info *FUNC2(int plen)
{
	struct leaf_info *li = FUNC1(sizeof(struct leaf_info),  GFP_KERNEL);
	if (li) {
		li->plen = plen;
		FUNC0(&li->falh);
	}
	return li;
}