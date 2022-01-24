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
struct ecryptfs_msg_ctx {int dummy; } ;
typedef  char ecryptfs_message ;
struct ecryptfs_key_record {int dummy; } ;
struct ecryptfs_crypt_stat {int /*<<< orphan*/  key_size; int /*<<< orphan*/  cipher; } ;
struct TYPE_3__ {int /*<<< orphan*/  signature; } ;
struct TYPE_4__ {TYPE_1__ private_key; } ;
struct ecryptfs_auth_tok {TYPE_2__ token; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (char*,size_t,struct ecryptfs_msg_ctx**) ; 
 int FUNC3 (struct ecryptfs_msg_ctx*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (struct ecryptfs_key_record*,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ecryptfs_crypt_stat*,char**,size_t*) ; 

__attribute__((used)) static int
FUNC7(struct ecryptfs_auth_tok *auth_tok,
			struct ecryptfs_crypt_stat *crypt_stat,
			struct ecryptfs_key_record *key_rec)
{
	struct ecryptfs_msg_ctx *msg_ctx = NULL;
	char *payload = NULL;
	size_t payload_len;
	struct ecryptfs_message *msg;
	int rc;

	rc = FUNC6(auth_tok->token.private_key.signature,
				 FUNC0(
					 crypt_stat->cipher,
					 crypt_stat->key_size),
				 crypt_stat, &payload, &payload_len);
	if (rc) {
		FUNC1(KERN_ERR, "Error generating tag 66 packet\n");
		goto out;
	}
	rc = FUNC2(payload, payload_len, &msg_ctx);
	if (rc) {
		FUNC1(KERN_ERR, "Error sending message to "
				"ecryptfsd\n");
		goto out;
	}
	rc = FUNC3(msg_ctx, &msg);
	if (rc) {
		FUNC1(KERN_ERR, "Failed to receive tag 67 packet "
				"from the user space daemon\n");
		rc = -EIO;
		goto out;
	}
	rc = FUNC5(key_rec, msg);
	if (rc)
		FUNC1(KERN_ERR, "Error parsing tag 67 packet\n");
	FUNC4(msg);
out:
	FUNC4(payload);
	return rc;
}