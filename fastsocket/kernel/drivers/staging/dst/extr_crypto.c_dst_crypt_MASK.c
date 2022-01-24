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
struct dst_crypto_engine {scalar_t__ enc; int /*<<< orphan*/  cipher; struct ablkcipher_request* data; } ;
struct bio {int dummy; } ;
struct ablkcipher_request {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ablkcipher_request*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dst_crypt_iterator ; 
 int FUNC1 (struct bio*,struct dst_crypto_engine*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct bio*,struct dst_crypto_engine*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ablkcipher_request*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct dst_crypto_engine *e, struct bio *bio)
{
	struct ablkcipher_request *req = e->data;

	FUNC3(req, 0, sizeof(struct ablkcipher_request));
	FUNC0(req, e->cipher);

	if (e->enc)
		return FUNC2(bio, e, dst_crypt_iterator);
	else
		return FUNC1(bio, e, dst_crypt_iterator);
}