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
typedef  int /*<<< orphan*/  uint64_t ;
struct hostent {char* h_name; } ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
typedef  int /*<<< orphan*/  dt_pfargd_t ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  AF_INET6 ; 
 int NS_IN6ADDRSZ ; 
 int /*<<< orphan*/  NS_INADDRSZ ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (void const*,char*,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char*) ; 
 struct hostent* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct hostent*,char*,int,...) ; 
 struct hostent* FUNC4 (char*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char) ; 

__attribute__((used)) static int
FUNC7(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
	char *s = FUNC0(size + 1);
	struct hostent *host, res;
	char inetaddr[NS_IN6ADDRSZ];
	char buf[1024];
	int e;

	FUNC1(addr, s, size);
	s[size] = '\0';

	if (FUNC6(s, ':') == NULL && FUNC5(AF_INET, s, inetaddr) != -1) {
#ifdef illumos
		if ((host = gethostbyaddr_r(inetaddr, NS_INADDRSZ,
		    AF_INET, &res, buf, sizeof (buf), &e)) != NULL)
#else
		if (FUNC3(inetaddr, NS_INADDRSZ,
		    AF_INET, &res, buf, sizeof (buf), &host, &e) > 0)
#endif
			return (FUNC2(dtp, fp, format, host->h_name));
	} else if (FUNC5(AF_INET6, s, inetaddr) != -1) {
		if ((host = FUNC4(inetaddr, NS_IN6ADDRSZ,
		    AF_INET6, &e)) != NULL)
			return (FUNC2(dtp, fp, format, host->h_name));
	}

	return (FUNC2(dtp, fp, format, s));
}