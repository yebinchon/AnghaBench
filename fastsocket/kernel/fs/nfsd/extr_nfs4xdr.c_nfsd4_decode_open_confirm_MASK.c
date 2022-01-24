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
struct nfsd4_open_confirm {int /*<<< orphan*/  oc_seqid; int /*<<< orphan*/  oc_req_stateid; int /*<<< orphan*/ * oc_stateowner; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  scalar_t__ __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (struct nfsd4_compoundargs*,int /*<<< orphan*/ *) ; 
 scalar_t__ status ; 

__attribute__((used)) static __be32
FUNC3(struct nfsd4_compoundargs *argp, struct nfsd4_open_confirm *open_conf)
{
	DECODE_HEAD;
		    
	open_conf->oc_stateowner = NULL;
	status = FUNC2(argp, &open_conf->oc_req_stateid);
	if (status)
		return status;
	FUNC1(4);
	FUNC0(open_conf->oc_seqid);
						        
	DECODE_TAIL;
}