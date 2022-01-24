#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct list_head {int dummy; } ;
struct audit_context {struct list_head killed_trees; int /*<<< orphan*/  in_syscall; } ;
struct TYPE_2__ {struct audit_context* audit_context; } ;

/* Variables and functions */
 TYPE_1__* current ; 
 scalar_t__ FUNC0 (int) ; 

struct list_head *FUNC1(void)
{
	struct audit_context *ctx = current->audit_context;
	if (FUNC0(!ctx || !ctx->in_syscall))
		return NULL;
	return &ctx->killed_trees;
}