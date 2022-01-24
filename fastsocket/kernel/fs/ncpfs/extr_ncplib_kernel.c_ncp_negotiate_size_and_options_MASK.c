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

/* Variables and functions */
 int NCP_BLOCK_SIZE ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*) ; 
 int FUNC4 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ncp_server*,int) ; 
 int FUNC6 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp_server*) ; 

int
FUNC8(struct ncp_server *server, 
	int size, int options, int *ret_size, int *ret_options) {
	int result;

	/* there is minimum */
	if (size < NCP_BLOCK_SIZE) size = NCP_BLOCK_SIZE;

	FUNC3(server);
	FUNC1(server, size);
	FUNC2(server, options);
	
	if ((result = FUNC6(server, 0x61)) != 0)
	{
		FUNC7(server);
		return result;
	}

	/* NCP over UDP returns 0 (!!!) */
	result = FUNC4(server, 0);
	if (result >= NCP_BLOCK_SIZE)
		size = FUNC0(result, size);
	*ret_size = size;
	*ret_options = FUNC5(server, 4);

	FUNC7(server);
	return 0;
}