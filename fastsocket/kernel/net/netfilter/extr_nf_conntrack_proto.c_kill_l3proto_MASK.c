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
struct nf_conntrack_l3proto {scalar_t__ l3proto; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct nf_conn*) ; 

__attribute__((used)) static int FUNC1(struct nf_conn *i, void *data)
{
	return FUNC0(i) == ((struct nf_conntrack_l3proto *)data)->l3proto;
}