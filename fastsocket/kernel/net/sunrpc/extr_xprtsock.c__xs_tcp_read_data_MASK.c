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
struct xdr_skb_reader {int dummy; } ;
struct rpc_xprt {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct rpc_xprt*,struct xdr_skb_reader*) ; 

__attribute__((used)) static inline int FUNC1(struct rpc_xprt *xprt,
					struct xdr_skb_reader *desc)
{
	return FUNC0(xprt, desc);
}