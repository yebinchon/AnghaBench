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
struct hash_desc {int /*<<< orphan*/  tfm; scalar_t__ flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  CRYPTO_ALG_ASYNC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hash_desc*) ; 
 int /*<<< orphan*/  ima_hash ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct hash_desc *desc)
{
	int rc;

	desc->tfm = FUNC2(ima_hash, 0, CRYPTO_ALG_ASYNC);
	if (FUNC0(desc->tfm)) {
		FUNC5("IMA: failed to load %s transform: %ld\n",
			ima_hash, FUNC1(desc->tfm));
		rc = FUNC1(desc->tfm);
		return rc;
	}
	desc->flags = 0;
	rc = FUNC4(desc);
	if (rc)
		FUNC3(desc->tfm);
	return rc;
}