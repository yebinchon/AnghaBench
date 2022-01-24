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

/* Variables and functions */
 int /*<<< orphan*/  VHOST_NET_VQ_TX ; 
 scalar_t__ experimental_zcopytx ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vhost_net_misc ; 

__attribute__((used)) static int FUNC2(void)
{
	if (experimental_zcopytx)
		FUNC1(VHOST_NET_VQ_TX);
	return FUNC0(&vhost_net_misc);
}