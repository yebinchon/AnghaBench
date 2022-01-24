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
struct sctp_shared_key {int dummy; } ;
struct sctp_auth_bytes {int dummy; } ;
struct sctp_association {int dummy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_auth_bytes*) ; 
 struct sctp_auth_bytes* FUNC1 (struct sctp_shared_key*,struct sctp_auth_bytes*,struct sctp_auth_bytes*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct sctp_auth_bytes*,struct sctp_auth_bytes*) ; 
 struct sctp_auth_bytes* FUNC3 (struct sctp_association const*,int /*<<< orphan*/ ) ; 
 struct sctp_auth_bytes* FUNC4 (struct sctp_association const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct sctp_auth_bytes *FUNC5(
				 const struct sctp_association *asoc,
				 struct sctp_shared_key *ep_key,
				 gfp_t gfp)
{
	struct sctp_auth_bytes *local_key_vector;
	struct sctp_auth_bytes *peer_key_vector;
	struct sctp_auth_bytes	*first_vector,
				*last_vector;
	struct sctp_auth_bytes	*secret = NULL;
	int	cmp;


	/* Now we need to build the key vectors
	 * SCTP-AUTH , Section 6.1
	 *    The RANDOM parameter, the CHUNKS parameter and the HMAC-ALGO
	 *    parameter sent by each endpoint are concatenated as byte vectors.
	 *    These parameters include the parameter type, parameter length, and
	 *    the parameter value, but padding is omitted; all padding MUST be
	 *    removed from this concatenation before proceeding with further
	 *    computation of keys.  Parameters which were not sent are simply
	 *    omitted from the concatenation process.  The resulting two vectors
	 *    are called the two key vectors.
	 */

	local_key_vector = FUNC3(asoc, gfp);
	peer_key_vector = FUNC4(asoc, gfp);

	if (!peer_key_vector || !local_key_vector)
		goto out;

	/* Figure out the order in wich the key_vectors will be
	 * added to the endpoint shared key.
	 * SCTP-AUTH, Section 6.1:
	 *   This is performed by selecting the numerically smaller key
	 *   vector and concatenating it to the endpoint pair shared
	 *   key, and then concatenating the numerically larger key
	 *   vector to that.  If the key vectors are equal as numbers
	 *   but differ in length, then the concatenation order is the
	 *   endpoint shared key, followed by the shorter key vector,
	 *   followed by the longer key vector.  Otherwise, the key
	 *   vectors are identical, and may be concatenated to the
	 *   endpoint pair key in any order.
	 */
	cmp = FUNC2(local_key_vector,
					peer_key_vector);
	if (cmp < 0) {
		first_vector = local_key_vector;
		last_vector = peer_key_vector;
	} else {
		first_vector = peer_key_vector;
		last_vector = local_key_vector;
	}

	secret = FUNC1(ep_key, first_vector, last_vector,
					    gfp);
out:
	FUNC0(local_key_vector);
	FUNC0(peer_key_vector);

	return secret;
}