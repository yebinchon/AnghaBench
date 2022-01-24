#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  rng; } ;
struct TYPE_5__ {TYPE_4__ eng; int /*<<< orphan*/  client_max_version; TYPE_2__** policy_vtable; } ;
typedef  TYPE_1__ br_ssl_server_context ;
struct TYPE_6__ {int (* do_keyx ) (TYPE_2__**,unsigned char*,size_t*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,unsigned char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,int /*<<< orphan*/ ,size_t) ; 
 int FUNC5 (TYPE_2__**,unsigned char*,size_t*) ; 

__attribute__((used)) static void
FUNC6(br_ssl_server_context *ctx, int prf_id,
	unsigned char *epms, size_t len)
{
	uint32_t x;
	unsigned char rpms[48];

	/*
	 * Decrypt the PMS.
	 */
	x = (*ctx->policy_vtable)->do_keyx(ctx->policy_vtable, epms, &len);

	/*
	 * Set the first two bytes to the maximum supported client
	 * protocol version. These bytes are used for version rollback
	 * detection; forceing the two bytes will make the master secret
	 * wrong if the bytes are not correct. This process is
	 * recommended by RFC 5246 (section 7.4.7.1).
	 */
	FUNC1(epms, ctx->client_max_version);

	/*
	 * Make a random PMS and copy it above the decrypted value if the
	 * decryption failed. Note that we use a constant-time conditional
	 * copy.
	 */
	FUNC2(&ctx->eng.rng, rpms, sizeof rpms);
	FUNC0(x ^ 1, epms, rpms, sizeof rpms);

	/*
	 * Compute master secret.
	 */
	FUNC3(&ctx->eng, prf_id, epms, 48);

	/*
	 * Clear the pre-master secret from RAM: it is normally a buffer
	 * in the context, hence potentially long-lived.
	 */
	FUNC4(epms, 0, len);
}