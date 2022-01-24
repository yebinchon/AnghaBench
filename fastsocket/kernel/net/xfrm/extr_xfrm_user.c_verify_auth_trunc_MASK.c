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
struct xfrm_algo_auth {char* alg_name; } ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int CRYPTO_MAX_ALG_NAME ; 
 int EINVAL ; 
 size_t XFRMA_ALG_AUTH_TRUNC ; 
 struct xfrm_algo_auth* FUNC0 (struct nlattr*) ; 
 scalar_t__ FUNC1 (struct nlattr*) ; 
 scalar_t__ FUNC2 (struct xfrm_algo_auth*) ; 

__attribute__((used)) static int FUNC3(struct nlattr **attrs)
{
	struct nlattr *rt = attrs[XFRMA_ALG_AUTH_TRUNC];
	struct xfrm_algo_auth *algp;

	if (!rt)
		return 0;

	algp = FUNC0(rt);
	if (FUNC1(rt) < FUNC2(algp))
		return -EINVAL;

	algp->alg_name[CRYPTO_MAX_ALG_NAME - 1] = '\0';
	return 0;
}