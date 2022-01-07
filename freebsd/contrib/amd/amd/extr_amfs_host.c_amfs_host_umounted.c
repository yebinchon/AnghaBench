
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
struct TYPE_9__ {int mf_refc; int mf_flags; TYPE_1__* mf_server; scalar_t__ mf_error; } ;
typedef TYPE_2__ mntfs ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int XDRPROC_T_TYPE ;
struct TYPE_10__ {scalar_t__ cl_auth; } ;
struct TYPE_8__ {char* fs_host; scalar_t__ fs_version; struct sockaddr_in* fs_ip; } ;
typedef TYPE_3__ CLIENT ;


 int AM_MOUNTVERS3 ;
 int MFF_WEBNFS ;
 int MOUNTPROC_UMNTALL ;
 int MOUNTVERS ;
 scalar_t__ NFS_VERSION3 ;
 int RPC_ANYSOCK ;
 int RPC_SUCCESS ;
 int RPC_SYSTEMERROR ;
 int XLOG_ERROR ;
 int XLOG_INFO ;
 int amu_close (int) ;
 int clnt_call (TYPE_3__*,int ,int ,int ,int ,int ,struct timeval) ;
 int clnt_destroy (TYPE_3__*) ;
 char const* clnt_spcreateerror (char*) ;
 char* clnt_sperrno (int) ;
 int dlog (char*,char*) ;
 TYPE_3__* get_mount_client (char*,struct sockaddr_in*,struct timeval*,int*,int ) ;
 scalar_t__ make_nfs_auth () ;
 scalar_t__ nfs_auth ;
 int plog (int ,char*,...) ;
 scalar_t__ xdr_void ;

__attribute__((used)) static void
amfs_host_umounted(mntfs *mf)
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




  if (mf->mf_flags & MFF_WEBNFS) {
    plog(XLOG_ERROR, "amfs_host_umounted: cannot support WebNFS");
    return;
  }





  host = mf->mf_server->fs_host;
  sin = *mf->mf_server->fs_ip;
  plog(XLOG_INFO, "amfs_host_umounted: NFS version %d", (int) mf->mf_server->fs_version);





    mnt_version = MOUNTVERS;




  tv.tv_sec = 10;
  tv.tv_usec = 0;
  client = get_mount_client(host, &sin, &tv, &sock, mnt_version);
  if (client == ((void*)0)) {




    plog(XLOG_ERROR, "get_mount_client failed for %s", host);

    goto out;
  }

  if (!nfs_auth) {
    if (make_nfs_auth())
      goto out;
  }
  client->cl_auth = nfs_auth;

  dlog("Unmounting all from %s", host);

  clnt_stat = clnt_call(client,
   MOUNTPROC_UMNTALL,
   (XDRPROC_T_TYPE) xdr_void,
   0,
   (XDRPROC_T_TYPE) xdr_void,
   0,
   tv);
  if (clnt_stat != RPC_SUCCESS && clnt_stat != RPC_SYSTEMERROR) {

    const char *msg = clnt_sperrno(clnt_stat);
    plog(XLOG_ERROR, "unmount all from %s rpc failed: %s", host, msg);
    goto out;
  }

out:
  if (sock != RPC_ANYSOCK)
    (void) amu_close(sock);
  if (client)
    clnt_destroy(client);
}
