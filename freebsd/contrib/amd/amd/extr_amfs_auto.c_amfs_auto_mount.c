
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int opts ;
struct TYPE_18__ {char* mf_info; int mf_flags; TYPE_4__* mf_fo; } ;
typedef TYPE_6__ mntfs ;
struct TYPE_19__ {int am_autofs_fh; int am_name; void* am_pref; TYPE_5__* am_parent; } ;
typedef TYPE_7__ am_node ;
struct TYPE_13__ {int na_nlink; } ;
struct TYPE_17__ {char* am_pref; TYPE_3__* am_al; TYPE_1__ am_fattr; } ;
struct TYPE_16__ {char* opt_pref; } ;
struct TYPE_15__ {TYPE_2__* al_mnt; } ;
struct TYPE_14__ {int mf_info; } ;


 int EINVAL ;
 int MFF_IS_AUTOFS ;
 int SIZEOF_OPTS ;
 scalar_t__ STREQ (char*,char*) ;
 int XLOG_FATAL ;
 int amfs_mkcacheref (TYPE_6__*) ;
 int amfs_mount (TYPE_7__*,TYPE_6__*,char*) ;
 int autofs_get_opts (char*,int,int ) ;
 int errno ;
 int plog (int ,char*) ;
 void* str3cat (char*,char*,int ,char*) ;
 char* strealloc (char*,int ) ;
 void* xstrdup (char*) ;

__attribute__((used)) static int
amfs_auto_mount(am_node *mp, mntfs *mf)
{
  if (mp->am_parent == ((void*)0))
    return EINVAL;







  mp->am_parent->am_fattr.na_nlink++;





  if (mf->mf_info[0] == '.' && mf->mf_info[1] == '\0')
    mf->mf_info = strealloc(mf->mf_info, mp->am_parent->am_al->al_mnt->mf_info);
  if (mf->mf_fo->opt_pref) {

    if (STREQ(mf->mf_fo->opt_pref, "null")) {
      mp->am_pref = xstrdup("");
    } else {



      mp->am_pref = xstrdup(mf->mf_fo->opt_pref);
    }
  } else {





    char *ppref = mp->am_parent->am_pref;
    if (ppref == 0)
      ppref = "";
    mp->am_pref = str3cat((char *) ((void*)0), ppref, mp->am_name, "/");
  }
  amfs_mkcacheref(mf);

  return 0;
}
