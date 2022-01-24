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
typedef  int u_int ;
typedef  int /*<<< orphan*/  u_char ;
typedef  int ssize_t ;

/* Variables and functions */
 int DBG_DUMP_PKTS ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 size_t NTPC_DMAX ; 
 int /*<<< orphan*/  NTPC_MAX ; 
 int NTPC_MODE ; 
 int NTPC_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ntp_debug ; 
 int /*<<< orphan*/  ntpd_sock ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ seqno ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC8(u_int op, u_int associd, const char *vars)
{
	u_char	*rpkt;
	u_char	*ptr;
	size_t	vlen;
	ssize_t	ret;

	if ((rpkt = FUNC2(NTPC_MAX)) == NULL) {
		FUNC7(LOG_ERR, "%m");
		return (-1);
	}
	FUNC4(rpkt, 0, NTPC_MAX);

	ptr = rpkt;
	*ptr++ = (NTPC_VERSION << 3) | NTPC_MODE;
	*ptr++ = op;

	if (++seqno == 0)
		seqno++;
	*ptr++ = seqno >> 8;
	*ptr++ = seqno;

	/* skip status */
	ptr += 2;

	*ptr++ = associd >> 8;
	*ptr++ = associd;

	/* skip offset */
	ptr += 2;

	if (vars != NULL) {
		vlen = FUNC6(vars);
		if (vlen > NTPC_DMAX) {
			FUNC7(LOG_ERR, "NTP request too long (%zu)", vlen);
			FUNC1(rpkt);
			return (-1);
		}
		*ptr++ = vlen >> 8;
		*ptr++ = vlen;

		FUNC3(ptr, vars, vlen);
		ptr += vlen;
	} else
		/* skip data length (is already zero) */
		ptr += 2;

	while ((ptr - rpkt) % 4 != 0)
		*ptr++ = 0;

	if (ntp_debug & DBG_DUMP_PKTS) {
		FUNC7(LOG_INFO, "sending %zd bytes", ptr - rpkt);
		FUNC0(rpkt, ptr - rpkt);
	}

	ret = FUNC5(ntpd_sock, rpkt, ptr - rpkt, 0);
	if (ret == -1) {
		FUNC7(LOG_ERR, "cannot send to ntpd: %m");
		FUNC1(rpkt);
		return (-1);
	}
	return (0);
}