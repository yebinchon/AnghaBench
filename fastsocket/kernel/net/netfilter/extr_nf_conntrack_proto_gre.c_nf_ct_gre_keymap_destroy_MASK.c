#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct nf_conn** keymap; } ;
struct TYPE_4__ {TYPE_1__ ct_pptp_info; } ;
struct nf_conn_help {TYPE_2__ help; } ;
struct nf_conn {int /*<<< orphan*/  list; } ;
struct netns_proto_gre {int /*<<< orphan*/  keymap_lock; } ;
struct net {int dummy; } ;
typedef  enum ip_conntrack_dir { ____Placeholder_ip_conntrack_dir } ip_conntrack_dir ;

/* Variables and functions */
 int IP_CT_DIR_MAX ; 
 int IP_CT_DIR_ORIGINAL ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct netns_proto_gre* FUNC2 (struct net*,int /*<<< orphan*/ ) ; 
 struct net* FUNC3 (struct nf_conn*) ; 
 struct nf_conn_help* FUNC4 (struct nf_conn*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct nf_conn*) ; 
 int /*<<< orphan*/  proto_gre_net_id ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(struct nf_conn *ct)
{
	struct net *net = FUNC3(ct);
	struct netns_proto_gre *net_gre = FUNC2(net, proto_gre_net_id);
	struct nf_conn_help *help = FUNC4(ct);
	enum ip_conntrack_dir dir;

	FUNC5("entering for ct %p\n", ct);

	FUNC6(&net_gre->keymap_lock);
	for (dir = IP_CT_DIR_ORIGINAL; dir < IP_CT_DIR_MAX; dir++) {
		if (help->help.ct_pptp_info.keymap[dir]) {
			FUNC5("removing %p from list\n",
				 help->help.ct_pptp_info.keymap[dir]);
			FUNC1(&help->help.ct_pptp_info.keymap[dir]->list);
			FUNC0(help->help.ct_pptp_info.keymap[dir]);
			help->help.ct_pptp_info.keymap[dir] = NULL;
		}
	}
	FUNC7(&net_gre->keymap_lock);
}