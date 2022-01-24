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
struct nfsd4_compoundres {int dummy; } ;
struct nfsd4_access {int /*<<< orphan*/  ac_resp_access; int /*<<< orphan*/  ac_supported; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_access *access)
{
	__be32 *p;

	if (!nfserr) {
		FUNC1(8);
		FUNC2(access->ac_supported);
		FUNC2(access->ac_resp_access);
		FUNC0();
	}
	return nfserr;
}