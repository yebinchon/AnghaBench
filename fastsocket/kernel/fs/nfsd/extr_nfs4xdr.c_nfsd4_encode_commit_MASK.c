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
struct nfsd4_compoundres {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfsd4_commit {TYPE_1__ co_verf; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_commit *commit)
{
	__be32 *p;

	if (!nfserr) {
		FUNC1(8);
		FUNC2(commit->co_verf.data, 8);
		FUNC0();
	}
	return nfserr;
}