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
struct nf_conntrack_tuple_hash {int dummy; } ;
struct nf_conntrack_helper {int dummy; } ;
struct nf_conn_help {struct nf_conntrack_helper const* helper; } ;
struct nf_conn {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPCT_HELPER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct nf_conn*) ; 
 struct nf_conn* FUNC1 (struct nf_conntrack_tuple_hash*) ; 
 struct nf_conn_help* FUNC2 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC3 (struct nf_conntrack_helper const*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC4(struct nf_conntrack_tuple_hash *i,
			 const struct nf_conntrack_helper *me)
{
	struct nf_conn *ct = FUNC1(i);
	struct nf_conn_help *help = FUNC2(ct);

	if (help && help->helper == me) {
		FUNC0(IPCT_HELPER, ct);
		FUNC3(help->helper, NULL);
	}
	return 0;
}