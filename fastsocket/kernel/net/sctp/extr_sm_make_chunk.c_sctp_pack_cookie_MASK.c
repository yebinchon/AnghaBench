#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_19__ {int raw_addr_list_len; TYPE_5__* peer_init; int /*<<< orphan*/  expiration; int /*<<< orphan*/  adaptation_ind; int /*<<< orphan*/  prsctp_capable; } ;
struct sctp_signed_cookie {int /*<<< orphan*/  signature; TYPE_6__ c; } ;
struct TYPE_16__ {int /*<<< orphan*/  sk; } ;
struct sctp_endpoint {size_t current_key; TYPE_3__ base; scalar_t__* secret_key; } ;
struct sctp_cookie {int dummy; } ;
struct sctp_chunk {TYPE_5__ const* chunk_hdr; } ;
struct TYPE_15__ {int /*<<< orphan*/  adaptation_ind; int /*<<< orphan*/  prsctp_capable; } ;
struct sctp_association {int /*<<< orphan*/  cookie_life; TYPE_2__ peer; TYPE_6__ c; } ;
struct scatterlist {int dummy; } ;
struct hash_desc {scalar_t__ tfm; scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  sctp_paramhdr_t ;
struct TYPE_14__ {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct TYPE_17__ {TYPE_1__ p; scalar_t__ body; } ;
typedef  TYPE_4__ sctp_cookie_param_t ;
struct TYPE_18__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_5__ __u8 ;
struct TYPE_20__ {scalar_t__ hmac; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int SCTP_COOKIE_MULTIPLE ; 
 int /*<<< orphan*/  SCTP_PARAM_STATE_COOKIE ; 
 unsigned int SCTP_SECRET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct hash_desc*,struct scatterlist*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 TYPE_4__* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*,TYPE_5__ const*,int) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct scatterlist*,TYPE_6__*,int) ; 

__attribute__((used)) static sctp_cookie_param_t *FUNC11(const struct sctp_endpoint *ep,
				      const struct sctp_association *asoc,
				      const struct sctp_chunk *init_chunk,
				      int *cookie_len,
				      const __u8 *raw_addrs, int addrs_len)
{
	sctp_cookie_param_t *retval;
	struct sctp_signed_cookie *cookie;
	struct scatterlist sg;
	int headersize, bodysize;
	unsigned int keylen;
	char *key;

	/* Header size is static data prior to the actual cookie, including
	 * any padding.
	 */
	headersize = sizeof(sctp_paramhdr_t) +
		     (sizeof(struct sctp_signed_cookie) -
		      sizeof(struct sctp_cookie));
	bodysize = sizeof(struct sctp_cookie)
		+ FUNC8(init_chunk->chunk_hdr->length) + addrs_len;

	/* Pad out the cookie to a multiple to make the signature
	 * functions simpler to write.
	 */
	if (bodysize % SCTP_COOKIE_MULTIPLE)
		bodysize += SCTP_COOKIE_MULTIPLE
			- (bodysize % SCTP_COOKIE_MULTIPLE);
	*cookie_len = headersize + bodysize;

	/* Clear this memory since we are sending this data structure
	 * out on the network.
	 */
	retval = FUNC6(*cookie_len, GFP_ATOMIC);
	if (!retval)
		goto nodata;

	cookie = (struct sctp_signed_cookie *) retval->body;

	/* Set up the parameter header.  */
	retval->p.type = SCTP_PARAM_STATE_COOKIE;
	retval->p.length = FUNC4(*cookie_len);

	/* Copy the cookie part of the association itself.  */
	cookie->c = asoc->c;
	/* Save the raw address list length in the cookie. */
	cookie->c.raw_addr_list_len = addrs_len;

	/* Remember PR-SCTP capability. */
	cookie->c.prsctp_capable = asoc->peer.prsctp_capable;

	/* Save adaptation indication in the cookie. */
	cookie->c.adaptation_ind = asoc->peer.adaptation_ind;

	/* Set an expiration time for the cookie.  */
	FUNC3(&cookie->c.expiration);
	FUNC0(asoc->cookie_life, cookie->c.expiration);

	/* Copy the peer's init packet.  */
	FUNC7(&cookie->c.peer_init[0], init_chunk->chunk_hdr,
	       FUNC8(init_chunk->chunk_hdr->length));

	/* Copy the raw local address list of the association. */
	FUNC7((__u8 *)&cookie->c.peer_init[0] +
	       FUNC8(init_chunk->chunk_hdr->length), raw_addrs, addrs_len);

	if (FUNC9(ep->base.sk)->hmac) {
		struct hash_desc desc;

		/* Sign the message.  */
		FUNC10(&sg, &cookie->c, bodysize);
		keylen = SCTP_SECRET_SIZE;
		key = (char *)ep->secret_key[ep->current_key];
		desc.tfm = FUNC9(ep->base.sk)->hmac;
		desc.flags = 0;

		if (FUNC2(desc.tfm, key, keylen) ||
		    FUNC1(&desc, &sg, bodysize, cookie->signature))
			goto free_cookie;
	}

	return retval;

free_cookie:
	FUNC5(retval);
nodata:
	*cookie_len = 0;
	return NULL;
}