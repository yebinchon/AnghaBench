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
typedef  int /*<<< orphan*/  p ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (char*,char const*,size_t) ; 

__attribute__((used)) static int FUNC3(char *data, char *data_limit,
				  const char *pattern, size_t plen, char term,
				  __be32 *addr, __be16 *port,
				  char **start, char **end)
{
	unsigned char p[6];
	int i = 0;

	if (data_limit - data < plen) {
		/* check if there is partial match */
		if (FUNC2(data, pattern, data_limit - data) == 0)
			return -1;
		else
			return 0;
	}

	if (FUNC2(data, pattern, plen) != 0) {
		return 0;
	}
	*start = data + plen;

	for (data = *start; *data != term; data++) {
		if (data == data_limit)
			return -1;
	}
	*end = data;

	FUNC1(p, 0, sizeof(p));
	for (data = *start; data != *end; data++) {
		if (*data >= '0' && *data <= '9') {
			p[i] = p[i]*10 + *data - '0';
		} else if (*data == ',' && i < 5) {
			i++;
		} else {
			/* unexpected character */
			return -1;
		}
	}

	if (i != 5)
		return -1;

	*addr = FUNC0((__be32 *)p);
	*port = FUNC0((__be16 *)(p + 4));
	return 1;
}