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
struct nf_conntrack_helper {int /*<<< orphan*/  (* destroy ) (struct nf_conn*) ;} ;
struct nf_conn_help {int /*<<< orphan*/  helper; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 struct nf_conn_help* FUNC0 (struct nf_conn*) ; 
 struct nf_conntrack_helper* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct nf_conn*) ; 

void FUNC5(struct nf_conn *ct)
{
	struct nf_conn_help *help = FUNC0(ct);
	struct nf_conntrack_helper *helper;

	if (help) {
		FUNC2();
		helper = FUNC1(help->helper);
		if (helper && helper->destroy)
			helper->destroy(ct);
		FUNC3();
	}
}