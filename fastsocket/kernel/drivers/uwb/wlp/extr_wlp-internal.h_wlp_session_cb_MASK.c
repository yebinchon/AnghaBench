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
struct wlp {TYPE_1__* session; } ;
struct completion {int dummy; } ;
struct TYPE_2__ {struct completion* cb_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct completion*) ; 

__attribute__((used)) static inline
void FUNC1(struct wlp *wlp)
{
	struct completion *completion = wlp->session->cb_priv;
	FUNC0(completion);
}