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
struct ring_buffer_per_cpu {struct buffer_page* commit_page; struct buffer_page* reader_page; } ;
struct buffer_page {scalar_t__ read; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct buffer_page*) ; 
 struct buffer_page* FUNC1 (struct ring_buffer_per_cpu*) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ring_buffer_per_cpu *cpu_buffer)
{
	struct buffer_page *reader = cpu_buffer->reader_page;
	struct buffer_page *head = FUNC1(cpu_buffer);
	struct buffer_page *commit = cpu_buffer->commit_page;

	/* In case of error, head will be NULL */
	if (FUNC2(!head))
		return 1;

	return reader->read == FUNC0(reader) &&
		(commit == reader ||
		 (commit == head &&
		  head->read == FUNC0(commit)));
}