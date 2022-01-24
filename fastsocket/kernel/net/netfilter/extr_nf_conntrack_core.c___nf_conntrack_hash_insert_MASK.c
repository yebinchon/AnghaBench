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
struct nf_conn {TYPE_2__* tuplehash; } ;
struct TYPE_3__ {int /*<<< orphan*/ * hash; } ;
struct net {TYPE_1__ ct; } ;
struct TYPE_4__ {int /*<<< orphan*/  hnnode; } ;

/* Variables and functions */
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct net* FUNC1 (struct nf_conn*) ; 

__attribute__((used)) static void FUNC2(struct nf_conn *ct,
				       unsigned int hash,
				       unsigned int repl_hash)
{
	struct net *net = FUNC1(ct);

	FUNC0(&ct->tuplehash[IP_CT_DIR_ORIGINAL].hnnode,
			   &net->ct.hash[hash]);
	FUNC0(&ct->tuplehash[IP_CT_DIR_REPLY].hnnode,
			   &net->ct.hash[repl_hash]);
}