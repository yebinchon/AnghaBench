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
struct boot_info {int dummy; } ;

/* Variables and functions */
 struct boot_info* FUNC0 (int /*<<< orphan*/ *,struct node*,int /*<<< orphan*/ ) ; 
 struct node* FUNC1 (struct node*,char*,int /*<<< orphan*/ *) ; 
 struct node* FUNC2 (char const*) ; 

struct boot_info *FUNC3(const char *dirname)
{
	struct node *tree;

	tree = FUNC2(dirname);
	tree = FUNC1(tree, "", NULL);

	return FUNC0(NULL, tree, 0);
}