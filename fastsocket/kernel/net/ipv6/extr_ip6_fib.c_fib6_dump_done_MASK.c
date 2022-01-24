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
struct netlink_callback {int (* done ) (struct netlink_callback*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct netlink_callback*) ; 
 int FUNC1 (struct netlink_callback*) ; 

__attribute__((used)) static int FUNC2(struct netlink_callback *cb)
{
	FUNC0(cb);
	return cb->done ? cb->done(cb) : 0;
}