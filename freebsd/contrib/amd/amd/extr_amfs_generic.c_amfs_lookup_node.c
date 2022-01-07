
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int mf_fsflags; int mf_error; int mf_flags; int mf_mount; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_10__ {int am_error; int am_path; int am_flags; TYPE_1__* am_al; int am_name; struct TYPE_10__* am_osib; struct TYPE_10__* am_child; struct TYPE_10__* am_parent; } ;
typedef TYPE_3__ am_node ;
struct TYPE_8__ {TYPE_2__* al_mnt; } ;


 int AMF_REMOUNT ;
 int ENOENT ;
 int ENOSPC ;
 int ESTALE ;
 scalar_t__ FSTREQ (int ,char*) ;
 int FS_DIRECT ;
 scalar_t__ Finishing ;
 int MFF_ERROR ;
 int MFF_MOUNTED ;
 int MFF_UNMOUNTING ;
 int XFREE (char*) ;
 int XLOG_WARNING ;
 scalar_t__ amd_state ;
 int dlog (char*,...) ;
 int ereturn (int) ;
 char* expand_selectors (char*) ;
 TYPE_3__* get_ap_child (TYPE_3__*,char*) ;
 int plog (int ,char*,char*) ;
 int strerror (int) ;
 int valid_key (char*) ;

__attribute__((used)) static am_node *
amfs_lookup_node(am_node *mp, char *fname, int *error_return)
{
  am_node *new_mp;
  int error = 0;
  int in_progress = 0;
  mntfs *mf;
  char *expanded_fname = ((void*)0);

  dlog("in amfs_lookup_node");






  if (amd_state == Finishing) {
    if (mp->am_al == ((void*)0) || mp->am_al->al_mnt == ((void*)0) || mp->am_al->al_mnt->mf_fsflags & FS_DIRECT) {
      dlog("%s mount ignored - going down", fname);
    } else {
      dlog("%s/%s mount ignored - going down", mp->am_path, fname);
    }
    ereturn(ENOENT);
  }




  if (fname[0] == '.') {
    if (fname[1] == '\0')
      return mp;
    if (fname[1] == '.' && fname[2] == '\0') {
      if (mp->am_parent) {
 dlog(".. in %s gives %s", mp->am_path, mp->am_parent->am_path);
 return mp->am_parent;
      }
      ereturn(ESTALE);
    }
  }





  if (!valid_key(fname)) {
    plog(XLOG_WARNING, "Key \"%s\" contains a disallowed character", fname);
    ereturn(ENOENT);
  }





  expanded_fname = expand_selectors(fname);




  for (new_mp = mp->am_child; new_mp; new_mp = new_mp->am_osib) {
    if (FSTREQ(new_mp->am_name, expanded_fname)) {
      if (new_mp->am_error) {
 error = new_mp->am_error;
 continue;
      }





      mf = new_mp->am_al->al_mnt;
      if (mf->mf_error < 0)
 goto in_progrss;





      if (mf->mf_flags & MFF_ERROR) {
 error = mf->mf_error;
 continue;
      }
      if (!(mf->mf_flags & MFF_MOUNTED) || (mf->mf_flags & MFF_UNMOUNTING)) {
      in_progrss:







 dlog("ignoring mount of %s in %s -- %smounting in progress, flags %x",
      expanded_fname, mf->mf_mount,
      (mf->mf_flags & MFF_UNMOUNTING) ? "un" : "", mf->mf_flags);
 in_progress++;
 if (mf->mf_flags & MFF_UNMOUNTING) {
   dlog("will remount later");
   new_mp->am_flags |= AMF_REMOUNT;
 }
 continue;
      }




      dlog("matched %s in %s", expanded_fname, new_mp->am_path);
      XFREE(expanded_fname);
      return new_mp;
    }
  }

  if (in_progress) {
    dlog("Waiting while %d mount(s) in progress", in_progress);
    XFREE(expanded_fname);
    ereturn(-1);
  }




  if (error) {
    dlog("Returning error: %s", strerror(error));
    XFREE(expanded_fname);
    ereturn(error);
  }





  if ((int) amd_state >= (int) Finishing) {
    dlog("not found - server going down anyway");
    ereturn(ENOENT);
  }




  new_mp = get_ap_child(mp, expanded_fname);
  XFREE(expanded_fname);
  if (new_mp == ((void*)0))
    ereturn(ENOSPC);

  *error_return = -1;
  return new_mp;
}
