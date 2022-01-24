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
struct sockaddr_storage {int dummy; } ;

/* Variables and functions */
 int DLM_MAX_ADDR_COUNT ; 
 int /*<<< orphan*/  GFP_NOFS ; 
 struct sockaddr_storage** dlm_local_addr ; 
 scalar_t__ dlm_local_count ; 
 scalar_t__ FUNC0 (struct sockaddr_storage*,int) ; 
 struct sockaddr_storage* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sockaddr_storage*,struct sockaddr_storage*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	struct sockaddr_storage sas, *addr;
	int i;

	dlm_local_count = 0;
	for (i = 0; i < DLM_MAX_ADDR_COUNT - 1; i++) {
		if (FUNC0(&sas, i))
			break;

		addr = FUNC1(sizeof(*addr), GFP_NOFS);
		if (!addr)
			break;
		FUNC2(addr, &sas, sizeof(*addr));
		dlm_local_addr[dlm_local_count++] = addr;
	}
}