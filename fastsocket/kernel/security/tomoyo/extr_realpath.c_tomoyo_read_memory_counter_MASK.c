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
struct tomoyo_io_buffer {int read_eof; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 unsigned int tomoyo_allocated_memory_for_elements ; 
 unsigned int tomoyo_allocated_memory_for_savename ; 
 int /*<<< orphan*/  tomoyo_dynamic_memory_size ; 
 int /*<<< orphan*/  FUNC3 (struct tomoyo_io_buffer*,char*,unsigned int const,...) ; 
 int tomoyo_quota_for_elements ; 
 int tomoyo_quota_for_savename ; 

int FUNC4(struct tomoyo_io_buffer *head)
{
	if (!head->read_eof) {
		const unsigned int shared
			= tomoyo_allocated_memory_for_savename;
		const unsigned int private
			= tomoyo_allocated_memory_for_elements;
		const unsigned int dynamic
			= FUNC0(&tomoyo_dynamic_memory_size);
		char buffer[64];

		FUNC1(buffer, 0, sizeof(buffer));
		if (tomoyo_quota_for_savename)
			FUNC2(buffer, sizeof(buffer) - 1,
				 "   (Quota: %10u)",
				 tomoyo_quota_for_savename);
		else
			buffer[0] = '\0';
		FUNC3(head, "Shared:  %10u%s\n", shared, buffer);
		if (tomoyo_quota_for_elements)
			FUNC2(buffer, sizeof(buffer) - 1,
				 "   (Quota: %10u)",
				 tomoyo_quota_for_elements);
		else
			buffer[0] = '\0';
		FUNC3(head, "Private: %10u%s\n", private, buffer);
		FUNC3(head, "Dynamic: %10u\n", dynamic);
		FUNC3(head, "Total:   %10u\n",
				 shared + private + dynamic);
		head->read_eof = true;
	}
	return 0;
}