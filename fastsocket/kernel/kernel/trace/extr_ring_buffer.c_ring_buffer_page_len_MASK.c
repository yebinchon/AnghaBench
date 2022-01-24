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
struct buffer_data_page {int /*<<< orphan*/  commit; } ;

/* Variables and functions */
 size_t BUF_PAGE_HDR_SIZE ; 
 size_t FUNC0 (int /*<<< orphan*/ *) ; 

size_t FUNC1(void *page)
{
	return FUNC0(&((struct buffer_data_page *)page)->commit)
		+ BUF_PAGE_HDR_SIZE;
}