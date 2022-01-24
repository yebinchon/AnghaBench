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
struct sockaddr {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct sockaddr*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nlmsvc_match_ip ; 

int
FUNC1(struct sockaddr *server_addr)
{
	int ret;

	ret = FUNC0(server_addr, nlmsvc_match_ip, NULL);
	return ret ? -EIO : 0;
}