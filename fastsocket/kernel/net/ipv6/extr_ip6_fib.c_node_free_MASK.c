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
struct fib6_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  fib6_node_kmem ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fib6_node*) ; 

__attribute__((used)) static __inline__ void FUNC1(struct fib6_node * fn)
{
	FUNC0(fib6_node_kmem, fn);
}