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
struct mibrcvaddr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct mibrcvaddr*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mibrcvaddr*) ; 
 int /*<<< orphan*/  link ; 
 int /*<<< orphan*/  mibrcvaddr_list ; 

void
FUNC2(struct mibrcvaddr *rcv)
{
	FUNC0(&mibrcvaddr_list, rcv, link);
	FUNC1(rcv);
}