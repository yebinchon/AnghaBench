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
struct tnode {int dummy; } ;
struct node {int dummy; } ;

/* Variables and functions */
 struct node* FUNC0 (struct node*) ; 
 struct node* FUNC1 (struct tnode*,unsigned int) ; 

__attribute__((used)) static inline struct node *FUNC2(struct tnode *tn, unsigned int i)
{
	struct node *ret = FUNC1(tn, i);

	return FUNC0(ret);
}