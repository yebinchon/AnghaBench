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
 int JSON_ARRAY ; 
 size_t JSON_ARRAYN ; 
 int JSON_CONSTANT ; 
 int JSON_NUMBER ; 
 size_t JSON_OBJECT ; 
 int JSON_STRING ; 
 int FUNC1 (unsigned char const**,unsigned char const*,size_t*,size_t) ; 
 int FUNC2 (unsigned char const**,unsigned char const*,char*,int) ; 
 int FUNC3 (unsigned char const**,unsigned char const*) ; 
 int FUNC4 (unsigned char const**,unsigned char const*,size_t*,size_t) ; 
 int FUNC5 (unsigned char const**,unsigned char const*) ; 
 unsigned char* FUNC6 (unsigned char const*,unsigned char const*) ; 

__attribute__((used)) static int
FUNC7(const unsigned char **ucp, const unsigned char *ue,
    size_t *st, size_t lvl)
{
	const unsigned char *uc;
	int rv = 0;
	int t;

	uc = FUNC6(*ucp, ue);
	if (uc == ue)
		goto out;

	// Avoid recursion
	if (lvl > 20)
		return 0;
#if JSON_COUNT
	/* bail quickly if not counting */
	if (lvl > 1 && (st[JSON_OBJECT] || st[JSON_ARRAYN]))
		return 1;
#endif

	FUNC0("Parse general: ", uc, *ucp);
	switch (*uc++) {
	case '"':
		rv = FUNC5(&uc, ue);
		t = JSON_STRING;
		break;
	case '[':
		rv = FUNC1(&uc, ue, st, lvl + 1);
		t = JSON_ARRAY;
		break;
	case '{': /* '}' */
		rv = FUNC4(&uc, ue, st, lvl + 1);
		t = JSON_OBJECT;
		break;
	case 't':
		rv = FUNC2(&uc, ue, "true", sizeof("true"));
		t = JSON_CONSTANT;
		break;
	case 'f':
		rv = FUNC2(&uc, ue, "false", sizeof("false"));
		t = JSON_CONSTANT;
		break;
	case 'n':
		rv = FUNC2(&uc, ue, "null", sizeof("null"));
		t = JSON_CONSTANT;
		break;
	default:
		--uc;
		rv = FUNC3(&uc, ue);
		t = JSON_NUMBER;
		break;
	}
	if (rv)
		st[t]++;
	uc = FUNC6(uc, ue);
out:
	*ucp = uc;
	FUNC0("End general: ", uc, *ucp);
	if (lvl == 0)
		return rv && (st[JSON_ARRAYN] || st[JSON_OBJECT]);
	return rv;
}