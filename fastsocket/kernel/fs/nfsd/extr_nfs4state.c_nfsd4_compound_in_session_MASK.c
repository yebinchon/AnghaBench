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
struct nfsd4_session {int /*<<< orphan*/  se_sessionid; } ;
struct nfs4_sessionid {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfs4_sessionid*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC1(struct nfsd4_session *session, struct nfs4_sessionid *sid)
{
	if (!session)
		return 0;
	return !FUNC0(sid, &session->se_sessionid, sizeof(*sid));
}