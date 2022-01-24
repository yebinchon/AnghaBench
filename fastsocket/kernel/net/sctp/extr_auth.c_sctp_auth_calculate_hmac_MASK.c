#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sk_buff {int dummy; } ;
struct sctp_shared_key {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/ * hmac; int /*<<< orphan*/  hmac_id; int /*<<< orphan*/  shkey_id; } ;
struct sctp_auth_chunk {TYPE_2__ auth_hdr; } ;
struct sctp_auth_bytes {int /*<<< orphan*/  len; int /*<<< orphan*/ * data; } ;
struct sctp_association {scalar_t__ active_key_id; TYPE_1__* ep; struct sctp_auth_bytes* asoc_shared_key; } ;
struct scatterlist {int /*<<< orphan*/  length; } ;
struct hash_desc {int /*<<< orphan*/  tfm; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  scalar_t__ __u16 ;
struct TYPE_3__ {int /*<<< orphan*/ * auth_hmacs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hash_desc*,struct scatterlist*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 struct sctp_auth_bytes* FUNC3 (struct sctp_association const*,struct sctp_shared_key*,int /*<<< orphan*/ ) ; 
 struct sctp_shared_key* FUNC4 (struct sctp_association const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sctp_auth_bytes*) ; 
 int /*<<< orphan*/  FUNC6 (struct scatterlist*,struct sctp_auth_chunk*,int) ; 
 unsigned char* FUNC7 (struct sk_buff*) ; 

void FUNC8(const struct sctp_association *asoc,
			      struct sk_buff *skb,
			      struct sctp_auth_chunk *auth,
			      gfp_t gfp)
{
	struct scatterlist sg;
	struct hash_desc desc;
	struct sctp_auth_bytes *asoc_key;
	__u16 key_id, hmac_id;
	__u8 *digest;
	unsigned char *end;
	int free_key = 0;

	/* Extract the info we need:
	 * - hmac id
	 * - key id
	 */
	key_id = FUNC2(auth->auth_hdr.shkey_id);
	hmac_id = FUNC2(auth->auth_hdr.hmac_id);

	if (key_id == asoc->active_key_id)
		asoc_key = asoc->asoc_shared_key;
	else {
		struct sctp_shared_key *ep_key;

		ep_key = FUNC4(asoc, key_id);
		if (!ep_key)
			return;

		asoc_key = FUNC3(asoc, ep_key, gfp);
		if (!asoc_key)
			return;

		free_key = 1;
	}

	/* set up scatter list */
	end = FUNC7(skb);
	FUNC6(&sg, auth, end - (unsigned char *)auth);

	desc.tfm = asoc->ep->auth_hmacs[hmac_id];
	desc.flags = 0;

	digest = auth->auth_hdr.hmac;
	if (FUNC1(desc.tfm, &asoc_key->data[0], asoc_key->len))
		goto free;

	FUNC0(&desc, &sg, sg.length, digest);

free:
	if (free_key)
		FUNC5(asoc_key);
}