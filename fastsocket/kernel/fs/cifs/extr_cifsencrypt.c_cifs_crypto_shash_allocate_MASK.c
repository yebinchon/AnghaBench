#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct shash_desc {int dummy; } ;
struct TYPE_9__ {void* hmacmd5; void* md5; TYPE_5__* sdeschmacmd5; TYPE_3__* sdescmd5; } ;
struct TCP_Server_Info {TYPE_4__ secmech; } ;
struct TYPE_6__ {int flags; void* tfm; } ;
struct TYPE_10__ {TYPE_1__ shash; } ;
struct TYPE_7__ {int flags; void* tfm; } ;
struct TYPE_8__ {TYPE_2__ shash; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 void* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*) ; 
 void* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 

int
FUNC8(struct TCP_Server_Info *server)
{
	int rc;
	unsigned int size;

	server->secmech.hmacmd5 = FUNC3("hmac(md5)", 0, 0);
	if (FUNC0(server->secmech.hmacmd5)) {
		FUNC2(1, "could not allocate crypto hmacmd5\n");
		return FUNC1(server->secmech.hmacmd5);
	}

	server->secmech.md5 = FUNC3("md5", 0, 0);
	if (FUNC0(server->secmech.md5)) {
		FUNC2(1, "could not allocate crypto md5\n");
		rc = FUNC1(server->secmech.md5);
		goto crypto_allocate_md5_fail;
	}

	size = sizeof(struct shash_desc) +
			FUNC5(server->secmech.hmacmd5);
	server->secmech.sdeschmacmd5 = FUNC7(size, GFP_KERNEL);
	if (!server->secmech.sdeschmacmd5) {
		FUNC2(1, "cifs_crypto_shash_allocate: can't alloc hmacmd5\n");
		rc = -ENOMEM;
		goto crypto_allocate_hmacmd5_sdesc_fail;
	}
	server->secmech.sdeschmacmd5->shash.tfm = server->secmech.hmacmd5;
	server->secmech.sdeschmacmd5->shash.flags = 0x0;


	size = sizeof(struct shash_desc) +
			FUNC5(server->secmech.md5);
	server->secmech.sdescmd5 = FUNC7(size, GFP_KERNEL);
	if (!server->secmech.sdescmd5) {
		FUNC2(1, "cifs_crypto_shash_allocate: can't alloc md5\n");
		rc = -ENOMEM;
		goto crypto_allocate_md5_sdesc_fail;
	}
	server->secmech.sdescmd5->shash.tfm = server->secmech.md5;
	server->secmech.sdescmd5->shash.flags = 0x0;

	return 0;

crypto_allocate_md5_sdesc_fail:
	FUNC6(server->secmech.sdeschmacmd5);

crypto_allocate_hmacmd5_sdesc_fail:
	FUNC4(server->secmech.md5);

crypto_allocate_md5_fail:
	FUNC4(server->secmech.hmacmd5);

	return rc;
}