
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int mf_fsflags; } ;
typedef TYPE_2__ mntfs ;
struct TYPE_12__ {char* am_path; TYPE_1__* am_al; } ;
typedef TYPE_3__ am_node ;
struct TYPE_10__ {TYPE_2__* al_mnt; } ;


 int FS_DIRECT ;
 int dlog (char*,char*) ;
 TYPE_3__* exported_ap_alloc () ;
 int init_map (TYPE_3__*,char*) ;
 int insert_am (TYPE_3__*,TYPE_3__*) ;
 char* str3cat (char*,char*,char*,char*) ;

am_node *
get_ap_child(am_node *mp, char *fname)
{
  am_node *new_mp;
  mntfs *mf = mp->am_al->al_mnt;




  new_mp = exported_ap_alloc();
  if (new_mp) {



    init_map(new_mp, fname);




    insert_am(new_mp, mp);
    new_mp->am_path = str3cat(new_mp->am_path,
         (mf->mf_fsflags & FS_DIRECT)
         ? ""
         : mp->am_path,
         *fname == '/' ? "" : "/", fname);
    dlog("setting path to %s", new_mp->am_path);
  }

  return new_mp;
}
