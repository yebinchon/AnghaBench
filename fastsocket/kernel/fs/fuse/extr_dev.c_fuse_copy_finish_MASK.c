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
struct fuse_copy_state {int /*<<< orphan*/ * mapaddr; int /*<<< orphan*/  pg; scalar_t__ write; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct fuse_copy_state *cs)
{
	if (cs->mapaddr) {
		FUNC1(cs->mapaddr, KM_USER0);
		if (cs->write) {
			FUNC0(cs->pg);
			FUNC3(cs->pg);
		}
		FUNC2(cs->pg);
		cs->mapaddr = NULL;
	}
}