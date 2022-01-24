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
struct nfs4_delegation {int /*<<< orphan*/  dl_recall_lru; int /*<<< orphan*/  dl_perclnt; int /*<<< orphan*/  dl_perfile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct nfs4_delegation*) ; 
 int /*<<< orphan*/  FUNC2 (struct nfs4_delegation*) ; 
 int /*<<< orphan*/  recall_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfs4_delegation *dp)
{
	FUNC0(&dp->dl_perfile);
	FUNC0(&dp->dl_perclnt);
	FUNC3(&recall_lock);
	FUNC0(&dp->dl_recall_lru);
	FUNC4(&recall_lock);
	FUNC1(dp);
	FUNC2(dp);
}