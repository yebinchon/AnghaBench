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
struct sk_buff {int /*<<< orphan*/  len; scalar_t__ data; } ;
struct rfcomm_session {int /*<<< orphan*/  flags; } ;
struct rfcomm_mcc {int /*<<< orphan*/  len; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct rfcomm_session*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
#define  RFCOMM_FCOFF 135 
#define  RFCOMM_FCON 134 
#define  RFCOMM_MSC 133 
#define  RFCOMM_NSC 132 
#define  RFCOMM_PN 131 
#define  RFCOMM_RLS 130 
#define  RFCOMM_RPN 129 
#define  RFCOMM_TEST 128 
 int /*<<< orphan*/  RFCOMM_TX_THROTTLED ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct rfcomm_session*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC7 (struct rfcomm_session*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct rfcomm_session*,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC9 (struct rfcomm_session*,int,int,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC10 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct rfcomm_session*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct rfcomm_session*,int,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rfcomm_session*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*,int) ; 

__attribute__((used)) static int FUNC16(struct rfcomm_session *s, struct sk_buff *skb)
{
	struct rfcomm_mcc *mcc = (void *) skb->data;
	u8 type, cr, len;

	cr   = FUNC4(mcc->type);
	type = FUNC3(mcc->type);
	len  = FUNC2(mcc->len);

	FUNC0("%p type 0x%x cr %d", s, type, cr);

	FUNC15(skb, 2);

	switch (type) {
	case RFCOMM_PN:
		FUNC7(s, cr, skb);
		break;

	case RFCOMM_RPN:
		FUNC9(s, cr, len, skb);
		break;

	case RFCOMM_RLS:
		FUNC8(s, cr, skb);
		break;

	case RFCOMM_MSC:
		FUNC6(s, cr, skb);
		break;

	case RFCOMM_FCOFF:
		if (cr) {
			FUNC14(RFCOMM_TX_THROTTLED, &s->flags);
			FUNC10(s, 0);
		}
		break;

	case RFCOMM_FCON:
		if (cr) {
			FUNC5(RFCOMM_TX_THROTTLED, &s->flags);
			FUNC11(s, 0);
		}
		break;

	case RFCOMM_TEST:
		if (cr)
			FUNC13(s, 0, skb->data, skb->len);
		break;

	case RFCOMM_NSC:
		break;

	default:
		FUNC1("Unknown control type 0x%02x", type);
		FUNC12(s, cr, type);
		break;
	}
	return 0;
}