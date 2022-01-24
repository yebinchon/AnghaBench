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
typedef  unsigned long u16 ;
struct o2nm_node {int /*<<< orphan*/  nd_ipv4_port; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 size_t EINVAL ; 
 size_t ERANGE ; 
 int /*<<< orphan*/  FUNC0 (unsigned long) ; 
 unsigned long FUNC1 (char*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC2(struct o2nm_node *node,
					 const char *page, size_t count)
{
	unsigned long tmp;
	char *p = (char *)page;

	tmp = FUNC1(p, &p, 0);
	if (!p || (*p && (*p != '\n')))
		return -EINVAL;

	if (tmp == 0)
		return -EINVAL;
	if (tmp >= (u16)-1)
		return -ERANGE;

	node->nd_ipv4_port = FUNC0(tmp);

	return count;
}