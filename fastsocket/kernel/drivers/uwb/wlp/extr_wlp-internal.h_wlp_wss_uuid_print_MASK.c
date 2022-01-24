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
struct wlp_uuid {int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 size_t FUNC0 (char*,size_t,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline
size_t FUNC1(char *buf, size_t bufsize, struct wlp_uuid *uuid)
{
	size_t result;

	result = FUNC0(buf, bufsize,
			  "%02x:%02x:%02x:%02x:%02x:%02x:"
			  "%02x:%02x:%02x:%02x:%02x:%02x:"
			  "%02x:%02x:%02x:%02x",
			  uuid->data[0], uuid->data[1],
			  uuid->data[2], uuid->data[3],
			  uuid->data[4], uuid->data[5],
			  uuid->data[6], uuid->data[7],
			  uuid->data[8], uuid->data[9],
			  uuid->data[10], uuid->data[11],
			  uuid->data[12], uuid->data[13],
			  uuid->data[14], uuid->data[15]);
	return result;
}