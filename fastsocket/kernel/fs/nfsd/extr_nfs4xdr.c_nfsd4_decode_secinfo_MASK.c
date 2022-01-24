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
struct nfsd4_secinfo {int si_namelen; int /*<<< orphan*/  si_name; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_noent ; 
 scalar_t__ status ; 

__attribute__((used)) static __be32
FUNC4(struct nfsd4_compoundargs *argp,
		     struct nfsd4_secinfo *secinfo)
{
	DECODE_HEAD;

	FUNC1(4);
	FUNC0(secinfo->si_namelen);
	FUNC1(secinfo->si_namelen);
	FUNC2(secinfo->si_name, secinfo->si_namelen);
	status = FUNC3(secinfo->si_name, secinfo->si_namelen,
								nfserr_noent);
	if (status)
		return status;
	DECODE_TAIL;
}