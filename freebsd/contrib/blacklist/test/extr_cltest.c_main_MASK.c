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
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  socklen_t ;
typedef  int in_port_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int SOCK_DGRAM ; 
 int SOCK_STREAM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int,struct sockaddr_storage*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int,char**,char*) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,void const*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 scalar_t__ FUNC10 (int,char const*,size_t) ; 

int
FUNC11(int argc, char *argv[])
{
	int sfd;
	int c;
	struct sockaddr_storage ss;
	const char *msg = "hello";
	const char *addr = "127.0.0.1";
	int type = SOCK_STREAM;
	in_port_t port = 6161;
	socklen_t slen;
	char buf[128];

	while ((c = FUNC4(argc, argv, "a:m:p:u")) != -1) {
		switch (c) {
		case 'a':
			addr = optarg;
			break;
		case 'm':
			msg = optarg;
			break;
		case 'p':
			port = (in_port_t)FUNC0(optarg);
			break;
		case 'u':
			type = SOCK_DGRAM;
			break;
		default:
			FUNC9(c);
		}
	}

	FUNC3(addr, port, &ss, &slen);

	if ((sfd = FUNC7(AF_INET, type, 0)) == -1)
		FUNC2(EXIT_FAILURE, "socket");

	FUNC6(buf, sizeof(buf), "%a:%p", (const void *)&ss);
	FUNC5("connecting to: %s\n", buf);
	if (FUNC1(sfd, (const void *)&ss, slen) == -1)
		FUNC2(EXIT_FAILURE, "connect");

	size_t len = FUNC8(msg) + 1;
	if (FUNC10(sfd, msg, len) != (ssize_t)len)
		FUNC2(EXIT_FAILURE, "write");
	return 0;
}