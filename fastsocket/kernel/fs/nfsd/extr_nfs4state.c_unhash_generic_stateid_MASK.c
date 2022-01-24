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
struct nfs4_stateid {int /*<<< orphan*/  st_perstateowner; int /*<<< orphan*/  st_perfile; int /*<<< orphan*/  st_hash; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct nfs4_stateid *stp)
{
	FUNC0(&stp->st_hash);
	FUNC0(&stp->st_perfile);
	FUNC0(&stp->st_perstateowner);
}