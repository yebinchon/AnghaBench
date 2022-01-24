#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct xdr_stream {int dummy; } ;
struct nsm_args {int /*<<< orphan*/  proc; int /*<<< orphan*/  vers; int /*<<< orphan*/  prog; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  nodename; } ;

/* Variables and functions */
 int EIO ; 
 int FUNC0 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (struct xdr_stream*,int) ; 

__attribute__((used)) static int FUNC5(struct xdr_stream *xdr, const struct nsm_args *argp)
{
	int status;
	__be32 *p;

	status = FUNC0(xdr, FUNC3()->nodename);
	if (FUNC2(status != 0))
		return status;
	p = FUNC4(xdr, 3 * sizeof(u32));
	if (FUNC2(p == NULL))
		return -EIO;
	*p++ = FUNC1(argp->prog);
	*p++ = FUNC1(argp->vers);
	*p++ = FUNC1(argp->proc);
	return 0;
}