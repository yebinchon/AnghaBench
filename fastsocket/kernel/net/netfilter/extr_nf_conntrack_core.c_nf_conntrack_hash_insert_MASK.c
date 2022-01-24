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
struct nf_conn {TYPE_1__* tuplehash; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuple; } ;

/* Variables and functions */
 size_t IP_CT_DIR_ORIGINAL ; 
 size_t IP_CT_DIR_REPLY ; 
 int /*<<< orphan*/  FUNC0 (struct nf_conn*,unsigned int,unsigned int) ; 
 unsigned int FUNC1 (struct net*,int /*<<< orphan*/ *) ; 
 struct net* FUNC2 (struct nf_conn*) ; 

void FUNC3(struct nf_conn *ct)
{
	struct net *net = FUNC2(ct);
	unsigned int hash, repl_hash;

	hash = FUNC1(net, &ct->tuplehash[IP_CT_DIR_ORIGINAL].tuple);
	repl_hash = FUNC1(net, &ct->tuplehash[IP_CT_DIR_REPLY].tuple);

	FUNC0(ct, hash, repl_hash);
}