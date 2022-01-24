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
struct ring_buffer_per_cpu {int dummy; } ;
struct buffer_page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RB_PAGE_NORMAL ; 
 int FUNC0 (struct ring_buffer_per_cpu*,struct buffer_page*,struct buffer_page*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct ring_buffer_per_cpu *cpu_buffer,
				   struct buffer_page *head,
				   struct buffer_page *prev,
				   int old_flag)
{
	return FUNC0(cpu_buffer, head, prev,
				old_flag, RB_PAGE_NORMAL);
}