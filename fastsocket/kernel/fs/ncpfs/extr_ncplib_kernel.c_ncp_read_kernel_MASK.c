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
typedef  int __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*) ; 
 int FUNC6 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (struct ncp_server*,int) ; 
 int FUNC8 (struct ncp_server*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ncp_server*) ; 

int
FUNC10(struct ncp_server *server, const char *file_id,
	     __u32 offset, __u16 to_read, char *target, int *bytes_read)
{
	char *source;
	int result;

	FUNC5(server);
	FUNC3(server, 0);
	FUNC4(server, file_id, 6);
	FUNC2(server, offset);
	FUNC1(server, to_read);

	if ((result = FUNC8(server, 72)) != 0) {
		goto out;
	}
	*bytes_read = FUNC6(server, 0);
	source = FUNC7(server, 2 + (offset & 1));

	FUNC0(target, source, *bytes_read);
out:
	FUNC9(server);
	return result;
}