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
struct TYPE_2__ {int /*<<< orphan*/  rt_genid; } ;
struct net {TYPE_1__ ipv4; } ;
typedef  int /*<<< orphan*/  shuffle ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(struct net *net)
{
	unsigned char shuffle;

	FUNC1(&shuffle, sizeof(shuffle));
	FUNC0(shuffle + 1U, &net->ipv4.rt_genid);
}