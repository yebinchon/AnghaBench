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
struct node {int dummy; } ;

/* Variables and functions */
 struct node* FUNC0 (struct node*,char const*) ; 
 struct node* FUNC1 (struct node*,char const*) ; 

struct node *FUNC2(struct node *tree, const char *ref)
{
	if (ref[0] == '/')
		return FUNC1(tree, ref);
	else
		return FUNC0(tree, ref);
}