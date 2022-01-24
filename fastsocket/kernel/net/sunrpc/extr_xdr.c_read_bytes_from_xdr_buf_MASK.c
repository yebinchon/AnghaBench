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
struct xdr_buf {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct xdr_buf*,void*,unsigned int) ; 
 int FUNC1 (struct xdr_buf*,struct xdr_buf*,unsigned int,unsigned int) ; 

int FUNC2(struct xdr_buf *buf, unsigned int base, void *obj, unsigned int len)
{
	struct xdr_buf subbuf;
	int status;

	status = FUNC1(buf, &subbuf, base, len);
	if (status != 0)
		return status;
	FUNC0(&subbuf, obj, len);
	return 0;
}