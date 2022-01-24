#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_3__ {void* next; } ;

/* Variables and functions */
 scalar_t__ SEQ_READ_FINISHED ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 TYPE_1__ smack_rule_list ; 

__attribute__((used)) static void *FUNC1(struct seq_file *s, loff_t *pos)
{
	if (*pos == SEQ_READ_FINISHED)
		return NULL;
	if (FUNC0(&smack_rule_list))
		return NULL;
	return smack_rule_list.next;
}