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
struct trace_array_cpu {int dummy; } ;
struct trace_array {int dummy; } ;
struct pt_regs {int /*<<< orphan*/  ip; } ;
struct backtrace_info {int pos; struct trace_array_cpu* data; struct trace_array* tr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct trace_array*,struct trace_array_cpu*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  backtrace_ops ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct pt_regs*,void*,int /*<<< orphan*/ *,struct backtrace_info*) ; 

__attribute__((used)) static int
FUNC2(struct pt_regs *regs, struct trace_array *tr,
	     struct trace_array_cpu *data)
{
	struct backtrace_info info;
	char *stack;

	info.tr = tr;
	info.data = data;
	info.pos = 1;

	FUNC0(info.tr, info.data, 1, regs->ip, 0);
	stack = ((char *)regs + sizeof(struct pt_regs));
	FUNC1(NULL, regs, (void *)stack, &backtrace_ops, &info);

	return info.pos;
}