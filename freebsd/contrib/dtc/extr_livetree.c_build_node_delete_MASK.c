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
struct node {int deleted; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct node*,int /*<<< orphan*/ ,int) ; 
 struct node* FUNC1 (int) ; 

struct node *FUNC2(void)
{
	struct node *new = FUNC1(sizeof(*new));

	FUNC0(new, 0, sizeof(*new));

	new->deleted = 1;

	return new;
}