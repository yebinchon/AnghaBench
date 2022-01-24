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
struct sk_buff {int dummy; } ;
struct input_dev {int /*<<< orphan*/  led; } ;
struct hidp_session {unsigned char leds; int /*<<< orphan*/  intr_transmit; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct hidp_session*,unsigned int,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int ENOMEM ; 
 unsigned int EV_LED ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HIDP_DATA_RTYPE_OUPUT ; 
 int HIDP_TRANS_DATA ; 
 int /*<<< orphan*/  LED_CAPSL ; 
 int /*<<< orphan*/  LED_COMPOSE ; 
 int /*<<< orphan*/  LED_KANA ; 
 int /*<<< orphan*/  LED_NUML ; 
 int /*<<< orphan*/  LED_SCROLLL ; 
 struct sk_buff* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hidp_session*) ; 
 int* FUNC4 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct hidp_session *session, struct input_dev *dev,
				unsigned int type, unsigned int code, int value)
{
	unsigned char newleds;
	struct sk_buff *skb;

	FUNC0("session %p type %d code %d value %d", session, type, code, value);

	if (type != EV_LED)
		return -1;

	newleds = (!!FUNC6(LED_KANA,    dev->led) << 3) |
		  (!!FUNC6(LED_COMPOSE, dev->led) << 3) |
		  (!!FUNC6(LED_SCROLLL, dev->led) << 2) |
		  (!!FUNC6(LED_CAPSL,   dev->led) << 1) |
		  (!!FUNC6(LED_NUML,    dev->led));

	if (session->leds == newleds)
		return 0;

	session->leds = newleds;

	if (!(skb = FUNC2(3, GFP_ATOMIC))) {
		FUNC1("Can't allocate memory for new frame");
		return -ENOMEM;
	}

	*FUNC4(skb, 1) = HIDP_TRANS_DATA | HIDP_DATA_RTYPE_OUPUT;
	*FUNC4(skb, 1) = 0x01;
	*FUNC4(skb, 1) = newleds;

	FUNC5(&session->intr_transmit, skb);

	FUNC3(session);

	return 0;
}