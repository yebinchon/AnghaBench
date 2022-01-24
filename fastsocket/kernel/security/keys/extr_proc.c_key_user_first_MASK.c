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
 struct rb_node* FUNC0 (struct rb_node*) ; 
 struct rb_node* FUNC1 (struct rb_root*) ; 

__attribute__((used)) static struct rb_node *FUNC2(struct rb_root *r)
{
	struct rb_node *n = FUNC1(r);
	return FUNC0(n);
}