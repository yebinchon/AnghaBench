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
struct xdr_netobj {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__be32 *
FUNC3(__be32 *p, const struct xdr_netobj *obj)
{
	unsigned int	quadlen = FUNC0(obj->len);

	p[quadlen] = 0;		/* zero trailing bytes */
	*p++ = FUNC1(obj->len);
	FUNC2(p, obj->data, obj->len);
	return p + FUNC0(obj->len);
}