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
struct rb_root {int dummy; } ;
struct rb_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct rb_node*) ; 
 scalar_t__ FUNC1 (struct rb_node*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct rb_node*,struct rb_root*) ; 

__attribute__((used)) static void FUNC4(struct rb_node *rb, struct rb_root *root)
{
	if (FUNC1(rb)) {
		FUNC2(1);
	} else {
		FUNC3(rb, root);
		FUNC0(rb);
	}
}