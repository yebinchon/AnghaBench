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
struct file {int dummy; } ;
typedef  scalar_t__ ssize_t ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 scalar_t__ EINVAL ; 
 int /*<<< orphan*/  NFSD_AVAIL ; 
 int /*<<< orphan*/  NFSD_CLEAR ; 
 int /*<<< orphan*/  NFSD_SET ; 
 unsigned int NFSD_SUPPORTED_MINOR_VERSION ; 
 int /*<<< orphan*/  NFSD_TEST ; 
 int SIMPLE_TRANSACTION_LIMIT ; 
 scalar_t__ FUNC0 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ nfsd_serv ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 int FUNC3 (char**,char*,size_t) ; 
 int FUNC4 (char*,char**,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int,char*,...) ; 

__attribute__((used)) static ssize_t FUNC7(struct file *file, char *buf, size_t size)
{
	char *mesg = buf;
	char *vers, *minorp, sign;
	int len, num, remaining;
	unsigned minor;
	ssize_t tlen = 0;
	char *sep;

	if (size>0) {
		if (nfsd_serv)
			/* Cannot change versions without updating
			 * nfsd_serv->sv_xdrsize, and reallocing
			 * rq_argp and rq_resp
			 */
			return -EBUSY;
		if (buf[size-1] != '\n')
			return -EINVAL;
		buf[size-1] = 0;

		vers = mesg;
		len = FUNC3(&mesg, vers, size);
		if (len <= 0) return -EINVAL;
		do {
			sign = *vers;
			if (sign == '+' || sign == '-')
				num = FUNC4((vers+1), &minorp, 0);
			else
				num = FUNC4(vers, &minorp, 0);
			if (*minorp == '.') {
				if (num < 4)
					return -EINVAL;
				minor = FUNC5(minorp+1, NULL, 0);
				if (minor == 0)
					return -EINVAL;
				if (FUNC0(minor, sign == '-' ?
						     NFSD_CLEAR : NFSD_SET) < 0)
					return -EINVAL;
				goto next;
			}
			switch(num) {
			case 2:
			case 3:
			case 4:
				FUNC2(num, sign == '-' ? NFSD_CLEAR : NFSD_SET);
				break;
			default:
				return -EINVAL;
			}
		next:
			vers += len + 1;
		} while ((len = FUNC3(&mesg, vers, size)) > 0);
		/* If all get turned off, turn them back on, as
		 * having no versions is BAD
		 */
		FUNC1();
	}

	/* Now write current state into reply buffer */
	len = 0;
	sep = "";
	remaining = SIMPLE_TRANSACTION_LIMIT;
	for (num=2 ; num <= 4 ; num++)
		if (FUNC2(num, NFSD_AVAIL)) {
			len = FUNC6(buf, remaining, "%s%c%d", sep,
				       FUNC2(num, NFSD_TEST)?'+':'-',
				       num);
			sep = " ";

			if (len > remaining)
				break;
			remaining -= len;
			buf += len;
			tlen += len;
		}
	if (FUNC2(4, NFSD_AVAIL))
		for (minor = 1; minor <= NFSD_SUPPORTED_MINOR_VERSION;
		     minor++) {
			len = FUNC6(buf, remaining, " %c4.%u",
					(FUNC2(4, NFSD_TEST) &&
					 FUNC0(minor, NFSD_TEST)) ?
						'+' : '-',
					minor);

			if (len > remaining)
				break;
			remaining -= len;
			buf += len;
			tlen += len;
		}

	len = FUNC6(buf, remaining, "\n");
	if (len > remaining)
		return -EINVAL;
	return tlen + len;
}