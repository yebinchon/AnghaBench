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
struct pstore_private {int /*<<< orphan*/  list; } ;
struct inode {struct pstore_private* i_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  allpstore_lock ; 
 int /*<<< orphan*/  FUNC0 (struct pstore_private*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(struct inode *inode)
{
	struct pstore_private *p = inode->i_private;
	unsigned long flags;
	if (p) {
		FUNC2(&allpstore_lock, flags);
		FUNC1(&p->list);
		FUNC3(&allpstore_lock, flags);
		FUNC0(p);
	}
}