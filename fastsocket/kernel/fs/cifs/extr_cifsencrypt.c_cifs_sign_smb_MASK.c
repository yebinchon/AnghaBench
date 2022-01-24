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
struct smb_hdr {int /*<<< orphan*/  smb_buf_length; } ;
struct kvec {scalar_t__ iov_len; struct smb_hdr* iov_base; } ;
struct TCP_Server_Info {int dummy; } ;
typedef  int /*<<< orphan*/  __u32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvec*,int,struct TCP_Server_Info*,int /*<<< orphan*/ *) ; 

int FUNC2(struct smb_hdr *cifs_pdu, struct TCP_Server_Info *server,
		  __u32 *pexpected_response_sequence_number)
{
	struct kvec iov;

	iov.iov_base = cifs_pdu;
	iov.iov_len = FUNC0(cifs_pdu->smb_buf_length) + 4;

	return FUNC1(&iov, 1, server,
			      pexpected_response_sequence_number);
}