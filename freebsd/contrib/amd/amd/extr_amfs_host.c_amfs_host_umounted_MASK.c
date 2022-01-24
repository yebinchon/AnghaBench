#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
struct TYPE_9__ {int mf_refc; int mf_flags; TYPE_1__* mf_server; scalar_t__ mf_error; } ;
typedef  TYPE_2__ mntfs ;
typedef  enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef  int /*<<< orphan*/  XDRPROC_T_TYPE ;
struct TYPE_10__ {scalar_t__ cl_auth; } ;
struct TYPE_8__ {char* fs_host; scalar_t__ fs_version; struct sockaddr_in* fs_ip; } ;
typedef  TYPE_3__ CLIENT ;

/* Variables and functions */
 int /*<<< orphan*/  AM_MOUNTVERS3 ; 
 int MFF_WEBNFS ; 
 int /*<<< orphan*/  MOUNTPROC_UMNTALL ; 
 int /*<<< orphan*/  MOUNTVERS ; 
 scalar_t__ NFS_VERSION3 ; 
 int RPC_ANYSOCK ; 
 int RPC_SUCCESS ; 
 int RPC_SYSTEMERROR ; 
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct timeval) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 char const* FUNC3 (char*) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 TYPE_3__* FUNC6 (char*,struct sockaddr_in*,struct timeval*,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 () ; 
 scalar_t__ nfs_auth ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ xdr_void ; 

__attribute__((used)) static void
FUNC9(mntfs *mf)
{
  char *host;
  CLIENT *client;
  enum clnt_stat clnt_stat;
  struct sockaddr_in sin;
  int sock = RPC_ANYSOCK;
  struct timeval tv;
  u_long mnt_version;

  if (mf->mf_error || mf->mf_refc > 1 || !mf->mf_server)
    return;

  /*
   * WebNFS servers shouldn't ever get here.
   */
  if (mf->mf_flags & MFF_WEBNFS) {
    FUNC8(XLOG_ERROR, "amfs_host_umounted: cannot support WebNFS");
    return;
  }

  /*
   * Take a copy of the server hostname, address, and NFS version
   * to mount version conversion.
   */
  host = mf->mf_server->fs_host;
  sin = *mf->mf_server->fs_ip;
  FUNC8(XLOG_INFO, "amfs_host_umounted: NFS version %d", (int) mf->mf_server->fs_version);
#ifdef HAVE_FS_NFS3
  if (mf->mf_server->fs_version == NFS_VERSION3)
    mnt_version = AM_MOUNTVERS3;
  else
#endif /* HAVE_FS_NFS3 */
    mnt_version = MOUNTVERS;

  /*
   * Create a client attached to mountd
   */
  tv.tv_sec = 10;
  tv.tv_usec = 0;
  client = FUNC6(host, &sin, &tv, &sock, mnt_version);
  if (client == NULL) {
#ifdef HAVE_CLNT_SPCREATEERROR
    plog(XLOG_ERROR, "get_mount_client failed for %s: %s",
	 host, clnt_spcreateerror(""));
#else /* not HAVE_CLNT_SPCREATEERROR */
    FUNC8(XLOG_ERROR, "get_mount_client failed for %s", host);
#endif /* not HAVE_CLNT_SPCREATEERROR */
    goto out;
  }

  if (!nfs_auth) {
    if (FUNC7())
      goto out;
  }
  client->cl_auth = nfs_auth;

  FUNC5("Unmounting all from %s", host);

  clnt_stat = FUNC1(client,
			MOUNTPROC_UMNTALL,
			(XDRPROC_T_TYPE) xdr_void,
			0,
			(XDRPROC_T_TYPE) xdr_void,
			0,
			tv);
  if (clnt_stat != RPC_SUCCESS && clnt_stat != RPC_SYSTEMERROR) {
    /* RPC_SYSTEMERROR seems to be returned for no good reason ... */
    const char *msg = FUNC4(clnt_stat);
    FUNC8(XLOG_ERROR, "unmount all from %s rpc failed: %s", host, msg);
    goto out;
  }

out:
  if (sock != RPC_ANYSOCK)
    (void) FUNC0(sock);
  if (client)
    FUNC2(client);
}