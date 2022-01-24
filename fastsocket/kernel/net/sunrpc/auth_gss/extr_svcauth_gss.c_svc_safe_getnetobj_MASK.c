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
struct xdr_netobj {int data; int /*<<< orphan*/  len; } ;
struct kvec {int iov_len; int iov_base; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct kvec*) ; 

__attribute__((used)) static inline int
FUNC2(struct kvec *argv, struct xdr_netobj *o)
{
	int l;

	if (argv->iov_len < 4)
		return -1;
	o->len = FUNC1(argv);
	l = FUNC0(o->len);
	if (argv->iov_len < l)
		return -1;
	o->data = argv->iov_base;
	argv->iov_base += l;
	argv->iov_len -= l;
	return 0;
}