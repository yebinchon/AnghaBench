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
struct xdr_stream {int dummy; } ;
struct nsm_args {TYPE_1__* priv; } ;
typedef  int /*<<< orphan*/  __be32 ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  SM_PRIV_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (struct xdr_stream*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct xdr_stream *xdr, const struct nsm_args *argp)
{
	__be32 *p;

	p = FUNC2(xdr, SM_PRIV_SIZE);
	if (FUNC0(p == NULL))
		return -EIO;
	FUNC1(p, argp->priv->data, SM_PRIV_SIZE);
	return 0;
}