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
struct net {int dummy; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct net*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,int) ; 

__attribute__((used)) static inline int FUNC2(struct net *net, unsigned num, unsigned mask)
{
	int res = (num + FUNC0(net)) & mask;
	FUNC1("hash(%d) = %d\n", num, res);
	return res;
}