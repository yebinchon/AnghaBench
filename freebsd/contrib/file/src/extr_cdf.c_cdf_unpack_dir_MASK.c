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
struct TYPE_3__ {int /*<<< orphan*/  d_unused0; int /*<<< orphan*/  d_size; int /*<<< orphan*/  d_stream_first_sector; int /*<<< orphan*/  d_modified; int /*<<< orphan*/  d_created; int /*<<< orphan*/  d_flags; int /*<<< orphan*/  d_storage_uuid; int /*<<< orphan*/  d_storage; int /*<<< orphan*/  d_right_child; int /*<<< orphan*/  d_left_child; int /*<<< orphan*/  d_color; int /*<<< orphan*/  d_type; int /*<<< orphan*/  d_namelen; int /*<<< orphan*/  d_name; } ;
typedef  TYPE_1__ cdf_directory_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

void
FUNC2(cdf_directory_t *d, char *buf)
{
	size_t len = 0;

	FUNC1(d->d_name);
	FUNC0(d->d_namelen);
	FUNC0(d->d_type);
	FUNC0(d->d_color);
	FUNC0(d->d_left_child);
	FUNC0(d->d_right_child);
	FUNC0(d->d_storage);
	FUNC1(d->d_storage_uuid);
	FUNC0(d->d_flags);
	FUNC0(d->d_created);
	FUNC0(d->d_modified);
	FUNC0(d->d_stream_first_sector);
	FUNC0(d->d_size);
	FUNC0(d->d_unused0);
}