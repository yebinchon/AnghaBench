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
struct dt_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DTSF_V1 ; 
 struct dt_info* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct node*) ; 
 struct node* FUNC2 (struct node*,char*) ; 
 struct node* FUNC3 (char const*) ; 

struct dt_info *FUNC4(const char *dirname)
{
	struct node *tree;

	tree = FUNC3(dirname);
	tree = FUNC2(tree, "");

	return FUNC0(DTSF_V1, NULL, tree, FUNC1(tree));
}