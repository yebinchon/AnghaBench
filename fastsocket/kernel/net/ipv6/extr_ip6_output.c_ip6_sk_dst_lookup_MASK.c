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
struct sock {int dummy; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  dst_cookie; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct sock*) ; 
 int FUNC1 (struct sock*,struct dst_entry**,struct flowi*) ; 
 struct dst_entry* FUNC2 (struct sock*,struct dst_entry*,struct flowi*) ; 
 struct dst_entry* FUNC3 (struct sock*,int /*<<< orphan*/ ) ; 

int FUNC4(struct sock *sk, struct dst_entry **dst, struct flowi *fl)
{
	*dst = NULL;
	if (sk) {
		*dst = FUNC3(sk, FUNC0(sk)->dst_cookie);
		*dst = FUNC2(sk, *dst, fl);
	}

	return FUNC1(sk, dst, fl);
}