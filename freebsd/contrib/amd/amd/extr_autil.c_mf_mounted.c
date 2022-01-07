
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int mf_flags; int mf_mount; TYPE_1__* mf_ops; int mf_info; scalar_t__ mf_error; } ;
typedef TYPE_2__ mntfs ;
typedef int bool_t ;
struct TYPE_5__ {int fs_type; int (* mounted ) (TYPE_2__*) ;} ;


 int MFF_MOUNTED ;
 int MFF_RESTART ;
 int XLOG_INFO ;
 int dlog (char*,int ,int) ;
 int plog (int ,char*,char*,int ,char*,char*,int ,int ) ;
 scalar_t__ strchr (int ,char) ;
 int stub1 (TYPE_2__*) ;

void
mf_mounted(mntfs *mf, bool_t call_free_opts)
{
  int quoted;
  int wasmounted = mf->mf_flags & MFF_MOUNTED;

  if (!wasmounted) {





    mf->mf_flags |= MFF_MOUNTED;
    mf->mf_error = 0;




    if (mf->mf_ops->mounted)
      mf->mf_ops->mounted(mf);







  }

  if (mf->mf_flags & MFF_RESTART) {
    mf->mf_flags &= ~MFF_RESTART;
    dlog("Restarted filesystem %s, flags 0x%x", mf->mf_mount, mf->mf_flags);
  }




  quoted = strchr(mf->mf_info, ' ') != 0;
  plog(XLOG_INFO, "%s%s%s %s fstype %s on %s",
       quoted ? "\"" : "",
       mf->mf_info,
       quoted ? "\"" : "",
       wasmounted ? "referenced" : "mounted",
       mf->mf_ops->fs_type, mf->mf_mount);
}
