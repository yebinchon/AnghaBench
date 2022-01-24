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
struct tcf_proto {struct basic_head* root; } ;
struct basic_head {int /*<<< orphan*/  flist; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct basic_head* FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct tcf_proto *tp)
{
	struct basic_head *head;

	head = FUNC1(sizeof(*head), GFP_KERNEL);
	if (head == NULL)
		return -ENOBUFS;
	FUNC0(&head->flist);
	tp->root = head;
	return 0;
}