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
struct trace_seq {int dummy; } ;
struct trace_entry {int dummy; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int FUNC0 (struct trace_seq*,struct trace_entry*) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_seq*,char) ; 

__attribute__((used)) static enum print_line_t
FUNC2(struct trace_seq *s, struct trace_entry *entry)
{
	if (!FUNC1(s, ' '))
		return 0;

	return FUNC0(s, entry);
}