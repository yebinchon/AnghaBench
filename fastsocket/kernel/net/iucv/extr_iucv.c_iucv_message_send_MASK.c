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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct iucv_path {int dummy; } ;
struct iucv_message {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iucv_path*,struct iucv_message*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(struct iucv_path *path, struct iucv_message *msg,
		      u8 flags, u32 srccls, void *buffer, size_t size)
{
	int rc;

	FUNC1();
	rc = FUNC0(path, msg, flags, srccls, buffer, size);
	FUNC2();
	return rc;
}