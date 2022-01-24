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
struct snapshot_handle {scalar_t__ cur; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ nr_copy_pages ; 
 scalar_t__ nr_meta_pages ; 

int FUNC1(struct snapshot_handle *handle)
{
	return !(!nr_copy_pages || !FUNC0() ||
			handle->cur <= nr_meta_pages + nr_copy_pages);
}