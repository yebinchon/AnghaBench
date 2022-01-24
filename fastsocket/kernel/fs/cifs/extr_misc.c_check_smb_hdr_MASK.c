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
struct smb_hdr {unsigned int Mid; int Flags; scalar_t__ Command; scalar_t__ Protocol; } ;
typedef  unsigned int __u16 ;
typedef  scalar_t__ __le32 ;

/* Variables and functions */
 int SMBFLG_RESPONSE ; 
 scalar_t__ SMB_COM_LOCKING_ANDX ; 
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,...) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int
FUNC2(struct smb_hdr *smb, __u16 mid)
{
	/* does it have the right SMB "signature" ? */
	if (*(__le32 *) smb->Protocol != FUNC1(0x424d53ff)) {
		FUNC0(1, "Bad protocol string signature header 0x%x",
			*(unsigned int *)smb->Protocol);
		return 1;
	}

	/* Make sure that message ids match */
	if (mid != smb->Mid) {
		FUNC0(1, "Mids do not match. received=%u expected=%u",
			smb->Mid, mid);
		return 1;
	}

	/* if it's a response then accept */
	if (smb->Flags & SMBFLG_RESPONSE)
		return 0;

	/* only one valid case where server sends us request */
	if (smb->Command == SMB_COM_LOCKING_ANDX)
		return 0;

	FUNC0(1, "Server sent request, not response. mid=%u", smb->Mid);
	return 1;
}