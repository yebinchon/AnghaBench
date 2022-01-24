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
struct sctp_ulpevent {int dummy; } ;
struct sctp_authkey_event {int auth_length; int /*<<< orphan*/  auth_assoc_id; int /*<<< orphan*/  auth_indication; scalar_t__ auth_altkeynumber; int /*<<< orphan*/  auth_keynumber; scalar_t__ auth_flags; int /*<<< orphan*/  auth_type; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u32 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_NOTIFICATION ; 
 int /*<<< orphan*/  SCTP_AUTHENTICATION_INDICATION ; 
 int /*<<< orphan*/  FUNC0 (struct sctp_association const*) ; 
 struct sk_buff* FUNC1 (struct sctp_ulpevent*) ; 
 struct sctp_ulpevent* FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct sctp_ulpevent*,struct sctp_association const*) ; 
 scalar_t__ FUNC4 (struct sk_buff*,int) ; 

struct sctp_ulpevent *FUNC5(
	const struct sctp_association *asoc, __u16 key_id,
	__u32 indication, gfp_t gfp)
{
	struct sctp_ulpevent *event;
	struct sctp_authkey_event *ak;
	struct sk_buff *skb;

	event = FUNC2(sizeof(struct sctp_authkey_event),
				  MSG_NOTIFICATION, gfp);
	if (!event)
		goto fail;

	skb = FUNC1(event);
	ak = (struct sctp_authkey_event *)
		FUNC4(skb, sizeof(struct sctp_authkey_event));

	ak->auth_type = SCTP_AUTHENTICATION_INDICATION;
	ak->auth_flags = 0;
	ak->auth_length = sizeof(struct sctp_authkey_event);

	ak->auth_keynumber = key_id;
	ak->auth_altkeynumber = 0;
	ak->auth_indication = indication;

	/*
	 * The association id field, holds the identifier for the association.
	 */
	FUNC3(event, asoc);
	ak->auth_assoc_id = FUNC0(asoc);

	return event;
fail:
	return NULL;
}