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
typedef  int u8 ;
struct rfcomm_session {int initiator; } ;
struct rfcomm_msc {int v24_sig; void* dlci; } ;
struct rfcomm_mcc {void* len; int /*<<< orphan*/  type; } ;
struct rfcomm_hdr {void* len; int /*<<< orphan*/  ctrl; void* addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int,int) ; 
 int /*<<< orphan*/  RFCOMM_MSC ; 
 int /*<<< orphan*/  RFCOMM_UIH ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int*) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rfcomm_session*,int*,int) ; 

__attribute__((used)) static int FUNC7(struct rfcomm_session *s, int cr, u8 dlci, u8 v24_sig)
{
	struct rfcomm_hdr *hdr;
	struct rfcomm_mcc *mcc;
	struct rfcomm_msc *msc;
	u8 buf[16], *ptr = buf;

	FUNC0("%p cr %d v24 0x%x", s, cr, v24_sig);

	hdr = (void *) ptr; ptr += sizeof(*hdr);
	hdr->addr = FUNC1(s->initiator, 0);
	hdr->ctrl = FUNC2(RFCOMM_UIH, 0);
	hdr->len  = FUNC4(sizeof(*mcc) + sizeof(*msc));

	mcc = (void *) ptr; ptr += sizeof(*mcc);
	mcc->type = FUNC5(cr, RFCOMM_MSC);
	mcc->len  = FUNC4(sizeof(*msc));

	msc = (void *) ptr; ptr += sizeof(*msc);
	msc->dlci    = FUNC1(1, dlci);
	msc->v24_sig = v24_sig | 0x01;

	*ptr = FUNC3(buf); ptr++;

	return FUNC6(s, buf, ptr - buf);
}