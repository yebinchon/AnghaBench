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
struct ncp_server {int dummy; } ;
typedef  int /*<<< orphan*/  __u8 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int) ; 
 int FUNC2 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*) ; 

int FUNC4(struct ncp_server* server, __u8 dirhandle) {
	int result;
	
	FUNC1(server, 20);
	FUNC0(server, dirhandle);
	result = FUNC2(server, 22);
	FUNC3(server);
	return result;
}