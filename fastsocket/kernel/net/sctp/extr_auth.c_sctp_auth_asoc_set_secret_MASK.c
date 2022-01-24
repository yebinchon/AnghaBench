#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct sctp_shared_key {TYPE_1__* key; } ;
struct sctp_auth_bytes {scalar_t__ len; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ __u32 ;
struct TYPE_2__ {scalar_t__ len; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,scalar_t__,scalar_t__) ; 
 struct sctp_auth_bytes* FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_auth_bytes *FUNC2(
			struct sctp_shared_key *ep_key,
			struct sctp_auth_bytes *first_vector,
			struct sctp_auth_bytes *last_vector,
			gfp_t gfp)
{
	struct sctp_auth_bytes *secret;
	__u32 offset = 0;
	__u32 auth_len;

	auth_len = first_vector->len + last_vector->len;
	if (ep_key->key)
		auth_len += ep_key->key->len;

	secret = FUNC1(auth_len, gfp);
	if (!secret)
		return NULL;

	if (ep_key->key) {
		FUNC0(secret->data, ep_key->key->data, ep_key->key->len);
		offset += ep_key->key->len;
	}

	FUNC0(secret->data + offset, first_vector->data, first_vector->len);
	offset += first_vector->len;

	FUNC0(secret->data + offset, last_vector->data, last_vector->len);

	return secret;
}