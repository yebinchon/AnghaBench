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
struct nw_search_sequence {size_t volNumber; } ;
struct ncp_server {char* name_space; int ncp_reply_size; } ;
struct ncp_reply_header {int dummy; } ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 char NW_NS_NFS ; 
 int /*<<< orphan*/  RIM_ALL ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct nw_search_sequence*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct ncp_server*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct ncp_server*,struct nw_search_sequence*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct ncp_server*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct ncp_server*) ; 
 int FUNC9 (struct ncp_server*,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC10 (struct ncp_server*) ; 

int FUNC11(struct ncp_server *server,
			   struct nw_search_sequence *seq,
			   int* more,
			   int* cnt,
			   char* buffer,
			   size_t bufsize,
			   char** rbuf,
			   size_t* rsize)
{
	int result;

	FUNC8(server);
	FUNC4(server, 20);
	FUNC4(server, server->name_space[seq->volNumber]);
	FUNC4(server, 0);		/* datastream */
	FUNC7(server, FUNC2(0x8006));
	FUNC5(server, RIM_ALL);
	FUNC7(server, FUNC2(32767));	/* max returned items */
	FUNC6(server, seq, 9);
#ifdef CONFIG_NCPFS_NFS_NS
	if (server->name_space[seq->volNumber] == NW_NS_NFS) {
		ncp_add_byte(server, 0);	/* 0 byte pattern */
	} else 
#endif
	{
		FUNC4(server, 2);	/* 2 byte pattern */
		FUNC4(server, 0xff);	/* following is a wildcard */
		FUNC4(server, '*');
	}
	result = FUNC9(server, 87, buffer, bufsize);
	if (result) {
		FUNC10(server);
		return result;
	}
	if (server->ncp_reply_size < 12) {
		FUNC10(server);
		return 0xFF;
	}
	*rsize = server->ncp_reply_size - 12;
	FUNC10(server);
	buffer = buffer + sizeof(struct ncp_reply_header);
	*rbuf = buffer + 12;
	*cnt = FUNC1(buffer + 10);
	*more = FUNC0(buffer + 9);
	FUNC3(seq, buffer, 9);
	return 0;
}