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
struct nf_conntrack_tuple {int dummy; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct nf_conntrack_tuple*,struct nf_conn const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nf_conntrack_tuple*,struct nf_conntrack_tuple const*) ; 

int
FUNC2(const struct nf_conntrack_tuple *tuple,
		  const struct nf_conn *ignored_conntrack)
{
	/* Conntrack tracking doesn't keep track of outgoing tuples; only
	   incoming ones.  NAT means they don't have a fixed mapping,
	   so we invert the tuple and look for the incoming reply.

	   We could keep a separate hash if this proves too slow. */
	struct nf_conntrack_tuple reply;

	FUNC1(&reply, tuple);
	return FUNC0(&reply, ignored_conntrack);
}