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
struct wlp_wss {int dummy; } ;
struct wlp {int dummy; } ;
struct sk_buff {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  WLP_ASSOC_C3 ; 
 int FUNC0 (struct wlp*,struct wlp_wss*,struct sk_buff**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
int FUNC1(struct wlp *wlp, struct wlp_wss *wss,
		       struct sk_buff **skb)
{
	return FUNC0(wlp, wss, skb, WLP_ASSOC_C3);
}