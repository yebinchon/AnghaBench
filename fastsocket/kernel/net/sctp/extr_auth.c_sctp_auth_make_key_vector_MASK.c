#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct sctp_auth_bytes {scalar_t__ data; scalar_t__ len; } ;
struct TYPE_9__ {int /*<<< orphan*/  length; } ;
struct TYPE_10__ {TYPE_1__ param_hdr; } ;
typedef  TYPE_2__ sctp_random_param_t ;
typedef  TYPE_2__ sctp_hmac_algo_param_t ;
typedef  TYPE_2__ sctp_chunks_param_t ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  scalar_t__ __u32 ;

/* Variables and functions */
 struct sctp_auth_bytes* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_auth_bytes *FUNC3(
			sctp_random_param_t *random,
			sctp_chunks_param_t *chunks,
			sctp_hmac_algo_param_t *hmacs,
			gfp_t gfp)
{
	struct sctp_auth_bytes *new;
	__u32	len;
	__u32	offset = 0;

	len = FUNC2(random->param_hdr.length) + FUNC2(hmacs->param_hdr.length);
        if (chunks)
		len += FUNC2(chunks->param_hdr.length);

	new = FUNC0(sizeof(struct sctp_auth_bytes) + len, gfp);
	if (!new)
		return NULL;

	new->len = len;

	FUNC1(new->data, random, FUNC2(random->param_hdr.length));
	offset += FUNC2(random->param_hdr.length);

	if (chunks) {
		FUNC1(new->data + offset, chunks,
			FUNC2(chunks->param_hdr.length));
		offset += FUNC2(chunks->param_hdr.length);
	}

	FUNC1(new->data + offset, hmacs, FUNC2(hmacs->param_hdr.length));

	return new;
}