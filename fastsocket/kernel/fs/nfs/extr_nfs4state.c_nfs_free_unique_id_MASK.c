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
struct nfs_unique_id {int /*<<< orphan*/  rb_node; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct rb_root*) ; 

__attribute__((used)) static void FUNC1(struct rb_root *root, struct nfs_unique_id *id)
{
	FUNC0(&id->rb_node, root);
}