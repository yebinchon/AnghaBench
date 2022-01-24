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
struct xfrm_replay_state {int dummy; } ;
struct xfrm_mark {int dummy; } ;
struct xfrm_lifetime_cur {int dummy; } ;
struct xfrm_aevent_id {int dummy; } ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 size_t FUNC1 (int) ; 

__attribute__((used)) static inline size_t FUNC2(void)
{
	return FUNC0(sizeof(struct xfrm_aevent_id))
	       + FUNC1(sizeof(struct xfrm_replay_state))
	       + FUNC1(sizeof(struct xfrm_lifetime_cur))
	       + FUNC1(sizeof(struct xfrm_mark))
	       + FUNC1(4) /* XFRM_AE_RTHR */
	       + FUNC1(4); /* XFRM_AE_ETHR */
}