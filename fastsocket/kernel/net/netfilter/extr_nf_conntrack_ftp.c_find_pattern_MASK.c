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
struct nf_conntrack_man {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(const char *data, size_t dlen,
			const char *pattern, size_t plen,
			char skip, char term,
			unsigned int *numoff,
			unsigned int *numlen,
			struct nf_conntrack_man *cmd,
			int (*getnum)(const char *, size_t,
				      struct nf_conntrack_man *, char))
{
	size_t i;

	FUNC0("find_pattern `%s': dlen = %Zu\n", pattern, dlen);
	if (dlen == 0)
		return 0;

	if (dlen <= plen) {
		/* Short packet: try for partial? */
		if (FUNC1(data, pattern, dlen) == 0)
			return -1;
		else return 0;
	}

	if (FUNC1(data, pattern, plen) != 0) {
#if 0
		size_t i;

		pr_debug("ftp: string mismatch\n");
		for (i = 0; i < plen; i++) {
			pr_debug("ftp:char %u `%c'(%u) vs `%c'(%u)\n",
				 i, data[i], data[i],
				 pattern[i], pattern[i]);
		}
#endif
		return 0;
	}

	FUNC0("Pattern matches!\n");
	/* Now we've found the constant string, try to skip
	   to the 'skip' character */
	for (i = plen; data[i] != skip; i++)
		if (i == dlen - 1) return -1;

	/* Skip over the last character */
	i++;

	FUNC0("Skipped up to `%c'!\n", skip);

	*numoff = i;
	*numlen = getnum(data + i, dlen - i, cmd, term);
	if (!*numlen)
		return -1;

	FUNC0("Match succeeded!\n");
	return 1;
}