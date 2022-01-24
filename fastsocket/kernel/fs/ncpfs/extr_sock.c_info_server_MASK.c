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
struct ncp_server {scalar_t__ info_sock; } ;
struct kvec {int iov_len; int /*<<< orphan*/ * iov_base; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOSIGNAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,struct kvec*,int,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ncp_server *server, unsigned int id, const void * data, size_t len)
{
	if (server->info_sock) {
		struct kvec iov[2];
		__be32 hdr[2];
	
		hdr[0] = FUNC0(len + 8);
		hdr[1] = FUNC0(id);
	
		iov[0].iov_base = hdr;
		iov[0].iov_len = 8;
		iov[1].iov_base = (void *) data;
		iov[1].iov_len = len;

		FUNC1(server->info_sock, iov, 2, len + 8, MSG_NOSIGNAL);
	}
}