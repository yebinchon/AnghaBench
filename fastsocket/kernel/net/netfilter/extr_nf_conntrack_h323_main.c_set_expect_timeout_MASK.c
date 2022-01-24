#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ expires; } ;
struct nf_conntrack_expect {TYPE_1__ timeout; } ;

/* Variables and functions */
 unsigned int HZ ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ jiffies ; 

__attribute__((used)) static int FUNC2(struct nf_conntrack_expect *exp,
			      unsigned timeout)
{
	if (!exp || !FUNC1(&exp->timeout))
		return 0;

	exp->timeout.expires = jiffies + timeout * HZ;
	FUNC0(&exp->timeout);

	return 1;
}