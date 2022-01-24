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
struct rfcomm_session {int dummy; } ;
struct rfcomm_hdr {int /*<<< orphan*/  len; int /*<<< orphan*/  ctrl; int /*<<< orphan*/  addr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RFCOMM_UIH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct rfcomm_session*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct rfcomm_session *s, u8 addr, u8 credits)
{
	struct rfcomm_hdr *hdr;
	u8 buf[16], *ptr = buf;

	FUNC0("%p addr %d credits %d", s, addr, credits);

	hdr = (void *) ptr; ptr += sizeof(*hdr);
	hdr->addr = addr;
	hdr->ctrl = FUNC1(RFCOMM_UIH, 1);
	hdr->len  = FUNC3(0);

	*ptr = credits; ptr++;

	*ptr = FUNC2(buf); ptr++;

	return FUNC4(s, buf, ptr - buf);
}