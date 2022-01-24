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
typedef  int /*<<< orphan*/  u_int32_t ;
struct nf_conntrack_tuple {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  htable_size; } ;
struct net {TYPE_1__ ct; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nf_conntrack_tuple const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nf_conntrack_hash_rnd ; 

__attribute__((used)) static inline u_int32_t FUNC1(const struct net *net,
				       const struct nf_conntrack_tuple *tuple)
{
	return FUNC0(tuple, net->ct.htable_size,
				nf_conntrack_hash_rnd);
}