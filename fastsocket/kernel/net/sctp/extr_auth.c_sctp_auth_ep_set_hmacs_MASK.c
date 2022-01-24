#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct sctp_hmacalgo {int shmac_num_idents; size_t* shmac_idents; } ;
struct sctp_endpoint {TYPE_2__* auth_hmacs_list; } ;
typedef  int /*<<< orphan*/  sctp_paramhdr_t ;
typedef  size_t __u16 ;
struct TYPE_6__ {int /*<<< orphan*/  hmac_name; } ;
struct TYPE_4__ {int /*<<< orphan*/  length; } ;
struct TYPE_5__ {TYPE_1__ param_hdr; int /*<<< orphan*/  hmac_ids; } ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 size_t SCTP_AUTH_HMAC_ID_MAX ; 
 size_t SCTP_AUTH_HMAC_ID_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,size_t*,int) ; 
 TYPE_3__* sctp_hmac_list ; 

int FUNC2(struct sctp_endpoint *ep,
			   struct sctp_hmacalgo *hmacs)
{
	int has_sha1 = 0;
	__u16 id;
	int i;

	/* Scan the list looking for unsupported id.  Also make sure that
	 * SHA1 is specified.
	 */
	for (i = 0; i < hmacs->shmac_num_idents; i++) {
		id = hmacs->shmac_idents[i];

		if (id > SCTP_AUTH_HMAC_ID_MAX)
			return -EOPNOTSUPP;

		if (SCTP_AUTH_HMAC_ID_SHA1 == id)
			has_sha1 = 1;

		if (!sctp_hmac_list[id].hmac_name)
			return -EOPNOTSUPP;
	}

	if (!has_sha1)
		return -EINVAL;

	FUNC1(ep->auth_hmacs_list->hmac_ids, &hmacs->shmac_idents[0],
		hmacs->shmac_num_idents * sizeof(__u16));
	ep->auth_hmacs_list->param_hdr.length = FUNC0(sizeof(sctp_paramhdr_t) +
				hmacs->shmac_num_idents * sizeof(__u16));
	return 0;
}