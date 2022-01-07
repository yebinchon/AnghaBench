
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int u_long ;
struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct sockaddr_in {int dummy; } ;
typedef int mntpt ;
typedef int mntlist ;
struct TYPE_18__ {int mf_flags; char* mf_info; int mf_mount; TYPE_1__* mf_server; } ;
typedef TYPE_2__ mntfs ;
typedef int fs_name ;
typedef TYPE_3__* exports ;
typedef enum clnt_stat { ____Placeholder_clnt_stat } clnt_stat ;
typedef int caddr_t ;
typedef int am_node ;
typedef TYPE_3__* am_nfs_handle_t ;
typedef int XDRPROC_T_TYPE ;
struct TYPE_20__ {scalar_t__ cl_auth; } ;
struct TYPE_19__ {char* ex_dir; struct TYPE_19__* ex_next; } ;
struct TYPE_17__ {char* fs_host; scalar_t__ fs_version; struct sockaddr_in* fs_ip; } ;
typedef int SVC_IN_ARG_TYPE ;
typedef TYPE_5__ CLIENT ;


 int AM_MOUNTVERS3 ;
 int EINVAL ;
 int EIO ;
 int FALSE ;
 int MAXPATHLEN ;
 int MFF_WEBNFS ;
 int MOUNTPROC_EXPORT ;
 int MOUNTVERS ;
 scalar_t__ NFS_VERSION3 ;
 int RPC_ANYSOCK ;
 int RPC_SUCCESS ;
 scalar_t__ STREQ (char*,char*) ;
 int TRUE ;
 int XFREE (TYPE_3__**) ;
 int XLOG_ERROR ;
 int XLOG_FATAL ;
 int XLOG_INFO ;
 scalar_t__ already_mounted (int *,char*) ;
 int amu_close (int) ;
 int clnt_call (TYPE_5__*,int ,int ,int ,int ,int ,struct timeval) ;
 int clnt_destroy (TYPE_5__*) ;
 int clnt_spcreateerror (char*) ;
 char* clnt_sperrno (int) ;
 int discard_mntlist (int *) ;
 int dlog (char*,char*) ;
 scalar_t__ do_mount (TYPE_3__**,char*,char*,TYPE_2__*) ;
 int fetch_fhandle (TYPE_5__*,char*,TYPE_3__**,scalar_t__) ;
 TYPE_5__* get_mount_client (char*,struct sockaddr_in*,struct timeval*,int*,int ) ;
 int make_mntpt (char*,int,TYPE_3__*,int ) ;
 int make_nfs_auth () ;
 int mnttab_file_name ;
 scalar_t__ nfs_auth ;
 int plog (int ,char*,...) ;
 int qsort (TYPE_3__**,int,int,int ) ;
 int * read_mtab (int ,int ) ;
 int sortfun ;
 char* strchr (char*,char) ;
 int unlock_mntlist () ;
 scalar_t__ xdr_exports ;
 int xdr_pri_free (int ,int ) ;
 scalar_t__ xdr_void ;
 scalar_t__ xmalloc (int) ;
 int xstrlcpy (char*,char*,int) ;

__attribute__((used)) static int
amfs_host_mount(am_node *am, mntfs *mf)
{
  struct timeval tv2;
  CLIENT *client;
  enum clnt_stat clnt_stat;
  int n_export;
  int j, k;
  exports exlist = 0, ex;
  exports *ep = ((void*)0);
  am_nfs_handle_t *fp = ((void*)0);
  char *host;
  int error = 0;
  struct sockaddr_in sin;
  int sock = RPC_ANYSOCK;
  int ok = FALSE;
  mntlist *mlist;
  char fs_name[MAXPATHLEN], *rfs_dir;
  char mntpt[MAXPATHLEN];
  struct timeval tv;
  u_long mnt_version;




  if (mf->mf_flags & MFF_WEBNFS) {
    plog(XLOG_ERROR, "amfs_host_mount: cannot support WebNFS");
    return EIO;
  }




  mlist = read_mtab(mf->mf_mount, mnttab_file_name);
  host = mf->mf_server->fs_host;
  sin = *mf->mf_server->fs_ip;
  plog(XLOG_INFO, "amfs_host_mount: NFS version %d", (int) mf->mf_server->fs_version);





    mnt_version = MOUNTVERS;
  tv.tv_sec = 2;
  tv.tv_usec = 0;




  client = get_mount_client(host, &sin, &tv, &sock, mnt_version);
  if (client == ((void*)0)) {




    plog(XLOG_ERROR, "get_mount_client failed for %s", host);

    error = EIO;
    goto out;
  }
  if (!nfs_auth) {
    error = make_nfs_auth();
    if (error)
      goto out;
  }
  client->cl_auth = nfs_auth;

  dlog("Fetching export list from %s", host);




  tv2.tv_sec = 10;
  tv2.tv_usec = 0;
  clnt_stat = clnt_call(client,
   MOUNTPROC_EXPORT,
   (XDRPROC_T_TYPE) xdr_void,
   0,
   (XDRPROC_T_TYPE) xdr_exports,
   (SVC_IN_ARG_TYPE) & exlist,
   tv2);
  if (clnt_stat != RPC_SUCCESS) {
    const char *msg = clnt_sperrno(clnt_stat);
    plog(XLOG_ERROR, "host_mount rpc failed: %s", msg);

    error = EIO;
    goto out;
  }




  for (n_export = 0, ex = exlist; ex; ex = ex->ex_next) {
    n_export++;
  }






  ep = (exports *) xmalloc(n_export * sizeof(exports));
  for (j = 0, ex = exlist; ex; ex = ex->ex_next) {
    make_mntpt(mntpt, sizeof(mntpt), ex, mf->mf_mount);
    if (already_mounted(mlist, mntpt))

      ok = TRUE;
    else
      ep[j++] = ex;
  }
  n_export = j;







  qsort(ep, n_export, sizeof(exports), sortfun);




  fp = (am_nfs_handle_t *) xmalloc(n_export * sizeof(am_nfs_handle_t));






  for (j = k = 0; j < n_export; j++) {

    if (j > k && ep[k] && STREQ(ep[j]->ex_dir, ep[k]->ex_dir)) {
      dlog("avoiding dup fhandle requested for %s", ep[j]->ex_dir);
      ep[j] = ((void*)0);
    } else {
      k = j;
      error = fetch_fhandle(client, ep[j]->ex_dir, &fp[j],
       mf->mf_server->fs_version);
      if (error)
 ep[j] = ((void*)0);
    }
  }







  xstrlcpy(fs_name, mf->mf_info, sizeof(fs_name));
  if ((rfs_dir = strchr(fs_name, ':')) == (char *) ((void*)0)) {
    plog(XLOG_FATAL, "amfs_host_mount: mf_info has no colon");
    error = EINVAL;
    goto out;
  }
  ++rfs_dir;
  for (j = 0; j < n_export; j++) {
    ex = ep[j];
    if (ex) {






      xstrlcpy(rfs_dir, ex->ex_dir, sizeof(fs_name) - (rfs_dir - fs_name));
      make_mntpt(mntpt, sizeof(mntpt), ex, mf->mf_mount);
      if (do_mount(&fp[j], mntpt, fs_name, mf) == 0)
 ok = TRUE;
    }
  }




out:
  discard_mntlist(mlist);
  XFREE(ep);
  XFREE(fp);
  if (sock != RPC_ANYSOCK)
    (void) amu_close(sock);
  if (client)
    clnt_destroy(client);
  if (exlist)
    xdr_pri_free((XDRPROC_T_TYPE) xdr_exports, (caddr_t) &exlist);
  if (ok)
    return 0;
  return error;
}
