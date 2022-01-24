#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct unix_sock {TYPE_6__* addr; int /*<<< orphan*/  mnt; struct dentry* dentry; } ;
struct task_struct {char* comm; scalar_t__ pid; } ;
struct sock {int /*<<< orphan*/  sk_family; } ;
struct path {int /*<<< orphan*/  mnt; struct dentry* dentry; } ;
struct net_device {int /*<<< orphan*/  name; } ;
struct ipv6_pinfo {int /*<<< orphan*/  daddr; int /*<<< orphan*/  rcv_saddr; } ;
struct inode {int /*<<< orphan*/  i_ino; TYPE_4__* i_sb; } ;
struct inet_sock {int /*<<< orphan*/  dport; int /*<<< orphan*/  sport; int /*<<< orphan*/  daddr; int /*<<< orphan*/  rcv_saddr; } ;
struct TYPE_14__ {char* name; } ;
struct dentry {TYPE_3__ d_name; struct inode* d_inode; } ;
struct TYPE_12__ {char* key_desc; int /*<<< orphan*/  key; } ;
struct TYPE_19__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_18__ {int /*<<< orphan*/  daddr; int /*<<< orphan*/  saddr; } ;
struct TYPE_20__ {int /*<<< orphan*/  netif; int /*<<< orphan*/  dport; TYPE_8__ v6info; int /*<<< orphan*/  sport; TYPE_7__ v4info; int /*<<< orphan*/  family; struct sock* sk; } ;
struct TYPE_13__ {struct inode* inode; struct path path; } ;
struct TYPE_11__ {char* kmod_name; TYPE_1__ key_struct; TYPE_9__ net; struct task_struct* tsk; TYPE_2__ fs; int /*<<< orphan*/  cap; int /*<<< orphan*/  ipc_id; } ;
struct common_audit_data {int type; TYPE_10__ u; struct task_struct* tsk; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_17__ {TYPE_5__* name; int /*<<< orphan*/  len; } ;
struct TYPE_16__ {char* sun_path; } ;
struct TYPE_15__ {int /*<<< orphan*/  s_id; } ;

/* Variables and functions */
#define  AF_INET 138 
#define  AF_INET6 137 
#define  AF_UNIX 136 
#define  LSM_AUDIT_DATA_CAP 135 
#define  LSM_AUDIT_DATA_FS 134 
#define  LSM_AUDIT_DATA_IPC 133 
#define  LSM_AUDIT_DATA_KEY 132 
#define  LSM_AUDIT_DATA_KMOD 131 
#define  LSM_AUDIT_DATA_NET 130 
#define  LSM_AUDIT_DATA_TASK 129 
#define  LSM_AUDIT_NO_AUDIT 128 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*,struct path*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*) ; 
 struct task_struct* current ; 
 struct dentry* FUNC4 (struct inode*) ; 
 struct net_device* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct dentry*) ; 
 struct ipv6_pinfo* FUNC8 (struct sock*) ; 
 struct inet_sock* FUNC9 (struct sock*) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  FUNC10 (struct audit_buffer*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (struct audit_buffer*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*) ; 
 struct unix_sock* FUNC12 (struct sock*) ; 

__attribute__((used)) static void FUNC13(struct audit_buffer *ab,
				   struct common_audit_data *a)
{
	struct inode *inode = NULL;
	struct task_struct *tsk = current;

	if (a->tsk)
		tsk = a->tsk;
	if (tsk && tsk->pid) {
		FUNC1(ab, " pid=%d comm=", tsk->pid);
		FUNC3(ab, tsk->comm);
	}

	switch (a->type) {
	case LSM_AUDIT_NO_AUDIT:
		return;
	case LSM_AUDIT_DATA_IPC:
		FUNC1(ab, " key=%d ", a->u.ipc_id);
		break;
	case LSM_AUDIT_DATA_CAP:
		FUNC1(ab, " capability=%d ", a->u.cap);
		break;
	case LSM_AUDIT_DATA_FS:
		if (a->u.fs.path.dentry) {
			struct dentry *dentry = a->u.fs.path.dentry;
			if (a->u.fs.path.mnt) {
				FUNC0(ab, "path=", &a->u.fs.path);
			} else {
				FUNC1(ab, " name=");
				FUNC3(ab,
						 dentry->d_name.name);
			}
			inode = dentry->d_inode;
		} else if (a->u.fs.inode) {
			struct dentry *dentry;
			inode = a->u.fs.inode;
			dentry = FUNC4(inode);
			if (dentry) {
				FUNC1(ab, " name=");
				FUNC3(ab,
						 dentry->d_name.name);
				FUNC7(dentry);
			}
		}
		if (inode)
			FUNC1(ab, " dev=%s ino=%lu",
					inode->i_sb->s_id,
					inode->i_ino);
		break;
	case LSM_AUDIT_DATA_TASK:
		tsk = a->u.tsk;
		if (tsk && tsk->pid) {
			FUNC1(ab, " pid=%d comm=", tsk->pid);
			FUNC3(ab, tsk->comm);
		}
		break;
	case LSM_AUDIT_DATA_NET:
		if (a->u.net.sk) {
			struct sock *sk = a->u.net.sk;
			struct unix_sock *u;
			int len = 0;
			char *p = NULL;

			switch (sk->sk_family) {
			case AF_INET: {
				struct inet_sock *inet = FUNC9(sk);

				FUNC10(ab, inet->rcv_saddr,
						inet->sport,
						"laddr", "lport");
				FUNC10(ab, inet->daddr,
						inet->dport,
						"faddr", "fport");
				break;
			}
			case AF_INET6: {
				struct inet_sock *inet = FUNC9(sk);
				struct ipv6_pinfo *inet6 = FUNC8(sk);

				FUNC11(ab, &inet6->rcv_saddr,
						inet->sport,
						"laddr", "lport");
				FUNC11(ab, &inet6->daddr,
						inet->dport,
						"faddr", "fport");
				break;
			}
			case AF_UNIX:
				u = FUNC12(sk);
				if (u->dentry) {
					struct path path = {
						.dentry = u->dentry,
						.mnt = u->mnt
					};
					FUNC0(ab, "path=", &path);
					break;
				}
				if (!u->addr)
					break;
				len = u->addr->len-sizeof(short);
				p = &u->addr->name->sun_path[0];
				FUNC1(ab, " path=");
				if (*p)
					FUNC3(ab, p);
				else
					FUNC2(ab, p, len);
				break;
			}
		}

		switch (a->u.net.family) {
		case AF_INET:
			FUNC10(ab, a->u.net.v4info.saddr,
					a->u.net.sport,
					"saddr", "src");
			FUNC10(ab, a->u.net.v4info.daddr,
					a->u.net.dport,
					"daddr", "dest");
			break;
		case AF_INET6:
			FUNC11(ab, &a->u.net.v6info.saddr,
					a->u.net.sport,
					"saddr", "src");
			FUNC11(ab, &a->u.net.v6info.daddr,
					a->u.net.dport,
					"daddr", "dest");
			break;
		}
		if (a->u.net.netif > 0) {
			struct net_device *dev;

			/* NOTE: we always use init's namespace */
			dev = FUNC5(&init_net, a->u.net.netif);
			if (dev) {
				FUNC1(ab, " netif=%s", dev->name);
				FUNC6(dev);
			}
		}
		break;
#ifdef CONFIG_KEYS
	case LSM_AUDIT_DATA_KEY:
		audit_log_format(ab, " key_serial=%u", a->u.key_struct.key);
		if (a->u.key_struct.key_desc) {
			audit_log_format(ab, " key_desc=");
			audit_log_untrustedstring(ab, a->u.key_struct.key_desc);
		}
		break;
#endif
	case LSM_AUDIT_DATA_KMOD:
		FUNC1(ab, " kmod=");
		FUNC3(ab, a->u.kmod_name);
		break;
	} /* switch (a->type) */
}