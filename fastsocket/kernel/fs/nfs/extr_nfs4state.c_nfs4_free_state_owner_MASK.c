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
struct TYPE_2__ {int /*<<< orphan*/  wait; } ;
struct nfs4_state_owner {int /*<<< orphan*/  so_cred; TYPE_1__ so_sequence; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_state_owner*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct nfs4_state_owner *sp)
{
	FUNC2(&sp->so_sequence.wait);
	FUNC1(sp->so_cred);
	FUNC0(sp);
}