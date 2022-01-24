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
typedef  int /*<<< orphan*/  br_hkdf_context ;
typedef  int /*<<< orphan*/  br_hash_class ;

/* Variables and functions */
 unsigned char* BR_HKDF_NO_SALT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,size_t,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,unsigned char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (unsigned char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  stdout ; 

__attribute__((used)) static void
FUNC8(const br_hash_class *dig, const char *ikmhex,
	const char *salthex, const char *infohex, const char *okmhex)
{
	unsigned char ikm[100], saltbuf[100], info[100], okm[100], tmp[107];
	const unsigned char *salt;
	size_t ikm_len, salt_len, info_len, okm_len;
	br_hkdf_context hc;
	size_t u;

	ikm_len = FUNC6(ikm, ikmhex);
	if (salthex == NULL) {
		salt = BR_HKDF_NO_SALT;
		salt_len = 0;
	} else {
		salt = saltbuf;
		salt_len = FUNC6(saltbuf, salthex);
	}
	info_len = FUNC6(info, infohex);
	okm_len = FUNC6(okm, okmhex);

	FUNC1(&hc, dig, salt, salt_len);
	FUNC2(&hc, ikm, ikm_len);
	FUNC0(&hc);
	FUNC3(&hc, info, info_len, tmp, okm_len);
	FUNC4("KAT HKDF 1", tmp, okm, okm_len);

	FUNC1(&hc, dig, salt, salt_len);
	for (u = 0; u < ikm_len; u ++) {
		FUNC2(&hc, &ikm[u], 1);
	}
	FUNC0(&hc);
	for (u = 0; u < okm_len; u ++) {
		FUNC3(&hc, info, info_len, &tmp[u], 1);
	}
	FUNC4("KAT HKDF 2", tmp, okm, okm_len);

	FUNC1(&hc, dig, salt, salt_len);
	FUNC2(&hc, ikm, ikm_len);
	FUNC0(&hc);
	for (u = 0; u < okm_len; u += 7) {
		FUNC3(&hc, info, info_len, &tmp[u], 7);
	}
	FUNC4("KAT HKDF 3", tmp, okm, okm_len);

	FUNC7(".");
	FUNC5(stdout);
}