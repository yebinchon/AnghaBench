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
 struct node* FUNC0 (struct node*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 struct node* FUNC2 (struct node*,char*) ; 

__attribute__((used)) static struct node *FUNC3(struct node *dt, char *name)
{
	struct node *an;

	an = FUNC2(dt, name);
	if (!an)
		an = FUNC0(dt, name);

	if (!an)
		FUNC1("Could not build root node /%s\n", name);

	return an;
}