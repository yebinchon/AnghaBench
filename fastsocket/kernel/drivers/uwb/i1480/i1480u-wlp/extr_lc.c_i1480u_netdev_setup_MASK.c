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
struct net_device {int dummy; } ;
struct i1480u {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct i1480u*) ; 
 int /*<<< orphan*/  FUNC1 (struct i1480u*,int /*<<< orphan*/ ,int) ; 
 struct i1480u* FUNC2 (struct net_device*) ; 

__attribute__((used)) static void FUNC3(struct net_device *net_dev)
{
	struct i1480u *i1480u = FUNC2(net_dev);
	/* Initialize @i1480u */
	FUNC1(i1480u, 0, sizeof(*i1480u));
	FUNC0(i1480u);
}