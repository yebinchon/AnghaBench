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
struct nfsd4_compoundargs {int dummy; } ;
struct nfsd4_close {int /*<<< orphan*/  cl_stateid; int /*<<< orphan*/  cl_seqid; int /*<<< orphan*/ * cl_stateowner; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct nfsd4_compoundargs*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundargs *argp, struct nfsd4_close *close)
{
	DECODE_HEAD;

	close->cl_stateowner = NULL;
	FUNC1(4);
	FUNC0(close->cl_seqid);
	return FUNC2(argp, &close->cl_stateid);

	DECODE_TAIL;
}