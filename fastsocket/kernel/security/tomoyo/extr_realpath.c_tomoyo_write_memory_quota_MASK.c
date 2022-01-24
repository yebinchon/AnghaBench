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
struct tomoyo_io_buffer {char* write_buf; } ;

/* Variables and functions */
 int FUNC0 (char*,char*,unsigned int*) ; 
 unsigned int tomoyo_quota_for_elements ; 
 unsigned int tomoyo_quota_for_savename ; 

int FUNC1(struct tomoyo_io_buffer *head)
{
	char *data = head->write_buf;
	unsigned int size;

	if (FUNC0(data, "Shared: %u", &size) == 1)
		tomoyo_quota_for_savename = size;
	else if (FUNC0(data, "Private: %u", &size) == 1)
		tomoyo_quota_for_elements = size;
	return 0;
}