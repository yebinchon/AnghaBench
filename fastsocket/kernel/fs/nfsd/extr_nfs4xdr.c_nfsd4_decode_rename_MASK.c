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
struct nfsd4_rename {int rn_snamelen; int rn_tnamelen; int /*<<< orphan*/  rn_tname; int /*<<< orphan*/  rn_sname; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nfserr_inval ; 
 int /*<<< orphan*/  nfserr_noent ; 
 int /*<<< orphan*/  status ; 

__attribute__((used)) static __be32
FUNC4(struct nfsd4_compoundargs *argp, struct nfsd4_rename *rename)
{
	DECODE_HEAD;

	FUNC1(4);
	FUNC0(rename->rn_snamelen);
	FUNC1(rename->rn_snamelen + 4);
	FUNC2(rename->rn_sname, rename->rn_snamelen);
	FUNC0(rename->rn_tnamelen);
	FUNC1(rename->rn_tnamelen);
	FUNC2(rename->rn_tname, rename->rn_tnamelen);
	if ((status = FUNC3(rename->rn_sname, rename->rn_snamelen, nfserr_noent)))
		return status;
	if ((status = FUNC3(rename->rn_tname, rename->rn_tnamelen, nfserr_inval)))
		return status;

	DECODE_TAIL;
}