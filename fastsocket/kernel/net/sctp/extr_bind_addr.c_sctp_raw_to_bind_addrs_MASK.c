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
typedef  union sctp_addr_param {int dummy; } sctp_addr_param ;
typedef  union sctp_addr {int dummy; } sctp_addr ;
struct sctp_paramhdr {int /*<<< orphan*/  length; int /*<<< orphan*/  type; } ;
struct sctp_bind_addr {int dummy; } ;
struct sctp_af {int /*<<< orphan*/  (* from_addr_param ) (union sctp_addr*,union sctp_addr_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u8 ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  SCTP_ADDR_SRC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (struct sctp_bind_addr*,union sctp_addr*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sctp_bind_addr*) ; 
 struct sctp_af* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (union sctp_addr*,union sctp_addr_param*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int) ; 

int FUNC8(struct sctp_bind_addr *bp, __u8 *raw_addr_list,
			   int addrs_len, __u16 port, gfp_t gfp)
{
	union sctp_addr_param *rawaddr;
	struct sctp_paramhdr *param;
	union sctp_addr addr;
	int retval = 0;
	int len;
	struct sctp_af *af;

	/* Convert the raw address to standard address format */
	while (addrs_len) {
		param = (struct sctp_paramhdr *)raw_addr_list;
		rawaddr = (union sctp_addr_param *)raw_addr_list;

		af = FUNC5(FUNC2(param->type));
		if (FUNC7(!af)) {
			retval = -EINVAL;
			FUNC4(bp);
			break;
		}

		af->from_addr_param(&addr, rawaddr, FUNC0(port), 0);
		retval = FUNC3(bp, &addr, SCTP_ADDR_SRC, gfp);
		if (retval) {
			/* Can't finish building the list, clean up. */
			FUNC4(bp);
			break;
		}

		len = FUNC1(param->length);
		addrs_len -= len;
		raw_addr_list += len;
	}

	return retval;
}