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
struct seq_file {int dummy; } ;
struct hlist_node {int dummy; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 struct hlist_node* FUNC0 (struct seq_file*) ; 
 struct hlist_node* FUNC1 (struct seq_file*,struct hlist_node*) ; 

__attribute__((used)) static struct hlist_node *FUNC2(struct seq_file *seq, loff_t pos)
{
	struct hlist_node *head = FUNC0(seq);

	if (head)
		while (pos && (head = FUNC1(seq, head)))
			pos--;
	return pos ? NULL : head;
}