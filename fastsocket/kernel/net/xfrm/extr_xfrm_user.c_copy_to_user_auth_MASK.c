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
struct xfrm_algo_auth {int alg_key_len; int /*<<< orphan*/  alg_key; int /*<<< orphan*/  alg_name; } ;
struct xfrm_algo {int alg_key_len; int /*<<< orphan*/  alg_key; int /*<<< orphan*/  alg_name; } ;
struct sk_buff {int dummy; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int EMSGSIZE ; 
 int /*<<< orphan*/  XFRMA_ALG_AUTH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct xfrm_algo* FUNC1 (struct nlattr*) ; 
 struct nlattr* FUNC2 (struct sk_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct xfrm_algo_auth *auth, struct sk_buff *skb)
{
	struct xfrm_algo *algo;
	struct nlattr *nla;

	nla = FUNC2(skb, XFRMA_ALG_AUTH,
			  sizeof(*algo) + (auth->alg_key_len + 7) / 8);
	if (!nla)
		return -EMSGSIZE;

	algo = FUNC1(nla);
	FUNC3(algo->alg_name, auth->alg_name, sizeof(algo->alg_name));
	FUNC0(algo->alg_key, auth->alg_key, (auth->alg_key_len + 7) / 8);
	algo->alg_key_len = auth->alg_key_len;

	return 0;
}