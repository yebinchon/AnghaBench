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
struct sock {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct sock*,struct dst_entry**,struct flowi*) ; 

int FUNC1(struct sock *sk, struct dst_entry **dst, struct flowi *fl)
{
	*dst = NULL;
	return FUNC0(sk, dst, fl);
}