
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int wchan_t ;
typedef scalar_t__ u_short ;
struct TYPE_11__ {int mf_refc; int mf_flags; TYPE_3__* mf_server; int mf_info; scalar_t__ mf_error; } ;
typedef TYPE_2__ mntfs ;
typedef int fwd_fun ;
struct TYPE_12__ {TYPE_1__* fs_ip; } ;
typedef TYPE_3__ fserver ;
struct TYPE_10__ {scalar_t__ sin_port; } ;
struct TYPE_13__ {char* fh_path; scalar_t__ fh_error; scalar_t__ fh_id; TYPE_3__* fh_fs; int fh_nfs_version; TYPE_1__ fh_sin; } ;
typedef TYPE_4__ fh_cache ;
typedef int am_nfs_handle_t ;


 int MFF_WEBNFS ;
 int MOUNTPROC_UMNT ;
 int SET_FH_VERSION (TYPE_3__*) ;
 int call_mountd (TYPE_4__*,int ,int *,int ) ;
 int dlog (char*,int ) ;
 int prime_nfs_fhandle_cache (char*,TYPE_3__*,int *,TYPE_2__*) ;
 char* strchr (int ,char) ;

__attribute__((used)) static void
nfs_umounted(mntfs *mf)
{
  fserver *fs;
  char *colon, *path;

  if (mf->mf_error || mf->mf_refc > 1)
    return;




  if (mf->mf_flags & MFF_WEBNFS)
    return;
  fs = mf->mf_server;
  colon = path = strchr(mf->mf_info, ':');
  if (fs && colon) {
    fh_cache f;

    dlog("calling mountd for %s", mf->mf_info);
    *path++ = '\0';
    f.fh_path = path;
    f.fh_sin = *fs->fs_ip;
    f.fh_sin.sin_port = (u_short) 0;
    f.fh_nfs_version = SET_FH_VERSION(fs);
    f.fh_fs = fs;
    f.fh_id = 0;
    f.fh_error = 0;
    prime_nfs_fhandle_cache(colon + 1, mf->mf_server, (am_nfs_handle_t *) ((void*)0), mf);
    call_mountd(&f, MOUNTPROC_UMNT, (fwd_fun *) ((void*)0), (wchan_t) ((void*)0));
    *colon = ':';
  }
}
