#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ucred {int dummy; } ;
struct socket {TYPE_1__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  pid; } ;
struct scm_cookie {TYPE_2__* fp; struct cred* cred; TYPE_3__ creds; struct pid* pid; } ;
struct pid {int dummy; } ;
struct msghdr {int dummy; } ;
struct cred {int /*<<< orphan*/  egid; int /*<<< orphan*/  gid; int /*<<< orphan*/  euid; int /*<<< orphan*/  uid; } ;
struct cmsghdr {scalar_t__ cmsg_level; int cmsg_type; int /*<<< orphan*/  cmsg_len; } ;
struct TYPE_7__ {int /*<<< orphan*/  count; } ;
struct TYPE_6__ {int /*<<< orphan*/  family; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmsghdr*) ; 
 struct cmsghdr* FUNC1 (struct msghdr*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct cmsghdr* FUNC3 (struct msghdr*,struct cmsghdr*) ; 
 int /*<<< orphan*/  FUNC4 (struct msghdr*,struct cmsghdr*) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ESRCH ; 
 int /*<<< orphan*/  PF_UNIX ; 
#define  SCM_CREDENTIALS 129 
#define  SCM_RIGHTS 128 
 scalar_t__ SOL_SOCKET ; 
 struct pid* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct pid*) ; 
 struct cred* FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (struct cred*) ; 
 int /*<<< orphan*/  FUNC11 (struct pid*) ; 
 int FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC13 (struct scm_cookie*) ; 
 int FUNC14 (struct cmsghdr*,TYPE_2__**) ; 

int FUNC15(struct socket *sock, struct msghdr *msg, struct scm_cookie *p)
{
	struct cmsghdr *cmsg;
	int err;

	for (cmsg = FUNC1(msg); cmsg; cmsg = FUNC3(msg, cmsg))
	{
		err = -EINVAL;

		/* Verify that cmsg_len is at least sizeof(struct cmsghdr) */
		/* The first check was omitted in <= 2.2.5. The reasoning was
		   that parser checks cmsg_len in any case, so that
		   additional check would be work duplication.
		   But if cmsg_level is not SOL_SOCKET, we do not check
		   for too short ancillary data object at all! Oops.
		   OK, let's add it...
		 */
		if (!FUNC4(msg, cmsg))
			goto error;

		if (cmsg->cmsg_level != SOL_SOCKET)
			continue;

		switch (cmsg->cmsg_type)
		{
		case SCM_RIGHTS:
			if (!sock->ops || sock->ops->family != PF_UNIX)
				goto error;
			err=FUNC14(cmsg, &p->fp);
			if (err<0)
				goto error;
			break;
		case SCM_CREDENTIALS:
			if (cmsg->cmsg_len != FUNC2(sizeof(struct ucred)))
				goto error;
			FUNC7(&p->creds, FUNC0(cmsg), sizeof(struct ucred));
			err = FUNC12(&p->creds);
			if (err)
				goto error;

			if (!p->pid || FUNC8(p->pid) != p->creds.pid) {
				struct pid *pid;
				err = -ESRCH;
				pid = FUNC5(p->creds.pid);
				if (!pid)
					goto error;
				FUNC11(p->pid);
				p->pid = pid;
			}

			if (!p->cred ||
			    (p->cred->euid != p->creds.uid) ||
			    (p->cred->egid != p->creds.gid)) {
				struct cred *cred;
				err = -ENOMEM;
				cred = FUNC9();
				if (!cred)
					goto error;

				cred->uid = cred->euid = p->creds.uid;
				cred->gid = cred->egid = p->creds.gid;
				if (p->cred)
					FUNC10(p->cred);
				p->cred = cred;
			}
			break;
		default:
			goto error;
		}
	}

	if (p->fp && !p->fp->count)
	{
		FUNC6(p->fp);
		p->fp = NULL;
	}
	return 0;

error:
	FUNC13(p);
	return err;
}