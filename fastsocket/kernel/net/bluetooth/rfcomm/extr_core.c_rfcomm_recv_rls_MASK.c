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
struct sk_buff {scalar_t__ data; } ;
struct rfcomm_session {int dummy; } ;
struct rfcomm_rls {int /*<<< orphan*/  status; int /*<<< orphan*/  dlci; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct rfcomm_session*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct rfcomm_session *s, int cr, struct sk_buff *skb)
{
	struct rfcomm_rls *rls = (void *) skb->data;
	u8 dlci = FUNC1(rls->dlci);

	FUNC0("dlci %d cr %d status 0x%x", dlci, cr, rls->status);

	if (!cr)
		return 0;

	/* We should probably do something with this information here. But
	 * for now it's sufficient just to reply -- Bluetooth 1.1 says it's
	 * mandatory to recognise and respond to RLS */

	FUNC2(s, 0, dlci, rls->status);

	return 0;
}