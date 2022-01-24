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
struct data {int dummy; } ;
struct property {struct data val; } ;
struct node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct node*,struct property*) ; 
 struct property* FUNC1 (char*,struct data) ; 
 struct data FUNC2 (struct data,void const*,int) ; 
 struct data empty_data ; 
 struct property* FUNC3 (struct node*,char*) ; 

void FUNC4(struct node *node,
				    char *name, const void *data, int len)
{
	struct data d;
	struct property *p;

	p = FUNC3(node, name);
	if (p) {
		d = FUNC2(p->val, data, len);
		p->val = d;
	} else {
		d = FUNC2(empty_data, data, len);
		p = FUNC1(name, d);
		FUNC0(node, p);
	}
}