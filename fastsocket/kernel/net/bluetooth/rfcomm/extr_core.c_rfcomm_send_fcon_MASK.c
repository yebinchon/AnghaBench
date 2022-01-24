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
typedef  int /*<<< orphan*/  u8 ;
struct rfcomm_session {int /*<<< orphan*/  initiator; } ;
struct rfcomm_mcc {void* len; int /*<<< orphan*/  type; } ;
struct rfcomm_hdr {void* len; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int) ; 
 int /*<<< orphan*/  RFCOMM_FCON ; 
 int /*<<< orphan*/  RFCOMM_UIH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct rfcomm_session*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC7(struct rfcomm_session *s, int cr)
{
	struct rfcomm_hdr *hdr;
	struct rfcomm_mcc *mcc;
	u8 buf[16], *ptr = buf;

	FUNC0("%p cr %d", s, cr);

	hdr = (void *) ptr; ptr += sizeof(*hdr);
	hdr->addr = FUNC1(s->initiator, 0);
	hdr->ctrl = FUNC2(RFCOMM_UIH, 0);
	hdr->len  = FUNC4(sizeof(*mcc));

	mcc = (void *) ptr; ptr += sizeof(*mcc);
	mcc->type = FUNC5(cr, RFCOMM_FCON);
	mcc->len  = FUNC4(0);

	*ptr = FUNC3(buf); ptr++;

	return FUNC6(s, buf, ptr - buf);
}