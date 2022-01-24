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
typedef  int /*<<< orphan*/  __u32 ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*) ; 
 int FUNC5 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*) ; 

int
FUNC7(struct ncp_server *server, const char *file_id,
		 __u32 offset, __u16 to_write,
		 const char *source, int *bytes_written)
{
	int result;

	FUNC4(server);
	FUNC2(server, 0);
	FUNC3(server, file_id, 6);
	FUNC1(server, offset);
	FUNC0(server, to_write);
	FUNC3(server, source, to_write);
	
	if ((result = FUNC5(server, 73)) == 0)
		*bytes_written = to_write;
	FUNC6(server);
	return result;
}