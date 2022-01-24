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
struct nfsd4_destroy_session {TYPE_1__ sessionid; } ;
struct nfsd4_compoundargs {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECODE_HEAD ; 
 int /*<<< orphan*/  DECODE_TAIL ; 
 int /*<<< orphan*/  NFS4_MAX_SESSIONID_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static __be32
FUNC2(struct nfsd4_compoundargs *argp,
			     struct nfsd4_destroy_session *destroy_session)
{
	DECODE_HEAD;
	FUNC1(NFS4_MAX_SESSIONID_LEN);
	FUNC0(destroy_session->sessionid.data, NFS4_MAX_SESSIONID_LEN);

	DECODE_TAIL;
}