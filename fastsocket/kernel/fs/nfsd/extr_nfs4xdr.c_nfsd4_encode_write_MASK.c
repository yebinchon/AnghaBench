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
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nfsd4_write {TYPE_1__ wr_verifier; int /*<<< orphan*/  wr_how_written; int /*<<< orphan*/  wr_bytes_written; } ;
struct nfsd4_compoundres {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static __be32
FUNC4(struct nfsd4_compoundres *resp, __be32 nfserr, struct nfsd4_write *write)
{
	__be32 *p;

	if (!nfserr) {
		FUNC1(16);
		FUNC2(write->wr_bytes_written);
		FUNC2(write->wr_how_written);
		FUNC3(write->wr_verifier.data, 8);
		FUNC0();
	}
	return nfserr;
}