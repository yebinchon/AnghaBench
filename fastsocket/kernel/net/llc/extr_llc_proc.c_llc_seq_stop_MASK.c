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
struct seq_file {int dummy; } ;
struct llc_sock {struct llc_sap* sap; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct llc_sap {TYPE_1__ sk_list; } ;

/* Variables and functions */
 void* SEQ_START_TOKEN ; 
 int /*<<< orphan*/  llc_sap_list_lock ; 
 struct llc_sock* FUNC0 (struct sock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct seq_file *seq, void *v)
{
	if (v && v != SEQ_START_TOKEN) {
		struct sock *sk = v;
		struct llc_sock *llc = FUNC0(sk);
		struct llc_sap *sap = llc->sap;

		FUNC1(&sap->sk_list.lock);
	}
	FUNC1(&llc_sap_list_lock);
}