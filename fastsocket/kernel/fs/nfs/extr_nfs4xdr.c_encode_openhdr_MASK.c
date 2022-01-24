#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct xdr_stream {int dummy; } ;
struct nfs_openargs {int /*<<< orphan*/  id; TYPE_3__* server; int /*<<< orphan*/  clientid; int /*<<< orphan*/  fmode; TYPE_2__* seqid; } ;
typedef  void* __be32 ;
struct TYPE_6__ {int s_dev; } ;
struct TYPE_5__ {TYPE_1__* sequence; } ;
struct TYPE_4__ {int counter; } ;

/* Variables and functions */
 int OP_OPEN ; 
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct xdr_stream*,int /*<<< orphan*/ ) ; 
 void** FUNC2 (struct xdr_stream*,int) ; 
 void** FUNC3 (void**,int /*<<< orphan*/ ) ; 
 void** FUNC4 (void**,char*,int) ; 

__attribute__((used)) static inline void FUNC5(struct xdr_stream *xdr, const struct nfs_openargs *arg)
{
	__be32 *p;
 /*
 * opcode 4, seqid 4, share_access 4, share_deny 4, clientid 8, ownerlen 4,
 * owner 4 = 32
 */
	p = FUNC2(xdr, 8);
	*p++ = FUNC0(OP_OPEN);
	*p = FUNC0(arg->seqid->sequence->counter);
	FUNC1(xdr, arg->fmode);
	p = FUNC2(xdr, 32);
	p = FUNC3(p, arg->clientid);
	*p++ = FUNC0(20);
	p = FUNC4(p, "open id:", 8);
	*p++ = FUNC0(arg->server->s_dev);
	FUNC3(p, arg->id);
}