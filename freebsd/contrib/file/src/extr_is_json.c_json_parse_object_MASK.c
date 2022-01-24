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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,unsigned char const*,unsigned char const*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const**,unsigned char const*,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const**,unsigned char const*) ; 
 unsigned char* FUNC3 (unsigned char const*,unsigned char const*) ; 

__attribute__((used)) static int
FUNC4(const unsigned char **ucp, const unsigned char *ue,
	size_t *st, size_t lvl)
{
	const unsigned char *uc = *ucp;
	FUNC0("Parse object: ", uc, *ucp);
	while (uc < ue) {
		uc = FUNC3(uc, ue);
		if (uc == ue)
			goto out;
		if (*uc++ != '"') {
			FUNC0("not string", uc, *ucp);
			goto out;
		}
		FUNC0("next field", uc, *ucp);
		if (!FUNC2(&uc, ue)) {
			FUNC0("not string", uc, *ucp);
			goto out;
		}
		uc = FUNC3(uc, ue);
		if (uc == ue)
			goto out;
		if (*uc++ != ':') {
			FUNC0("not colon", uc, *ucp);
			goto out;
		}
		if (!FUNC1(&uc, ue, st, lvl + 1)) {
			FUNC0("not json", uc, *ucp);
			goto out;
		}
		if (uc == ue)
			goto out;
		switch (*uc++) {
		case ',':
			continue;
		case '}': /* { */
			*ucp = uc;
			FUNC0("Good object: ", uc, *ucp);
			return 1;
		default:
			*ucp = uc - 1;
			FUNC0("not more", uc, *ucp);
			goto out;
		}
	}
out:
	FUNC0("Bad object: ", uc, *ucp);
	*ucp = uc;
	return 0;
}