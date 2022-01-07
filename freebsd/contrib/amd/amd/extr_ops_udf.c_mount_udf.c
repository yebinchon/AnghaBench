
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int voidp ;
typedef scalar_t__ uid_t ;
struct TYPE_7__ {char* fspec; int version; void* sessionnr; void* gmtoff; scalar_t__ anon_gid; scalar_t__ anon_uid; scalar_t__ nobody_gid; scalar_t__ nobody_uid; int udfmflags; } ;
typedef TYPE_1__ udf_args_t ;
typedef int udf_args ;
struct TYPE_8__ {char* mnt_dir; char* mnt_fsname; char* mnt_opts; int mnt_type; } ;
typedef TYPE_2__ mntent_t ;
typedef int mnt ;
typedef scalar_t__ gid_t ;
typedef int caddr_t ;
typedef int MTYPE_TYPE ;


 int EPERM ;
 int MNT2_UDF_OPT_CLOSESESSION ;
 int MNTTAB_OPT_CLOSESESSION ;
 char* MNTTAB_OPT_GMTOFF ;
 char* MNTTAB_OPT_GROUP ;
 char* MNTTAB_OPT_SESSIONNR ;
 char* MNTTAB_OPT_USER ;
 int MNTTAB_TYPE_UDF ;
 int MOUNT_TYPE_UDF ;
 int UDFMNT_VERSION ;
 int XFREE (char*) ;
 int XLOG_ERROR ;
 scalar_t__ a_gid (char*,char*) ;
 void* a_num (char*,char*) ;
 scalar_t__ a_uid (char*,char*) ;
 scalar_t__ amu_hasmntopt (TYPE_2__*,int ) ;
 int compute_mount_flags (TYPE_2__*) ;
 char* hasmntstr (TYPE_2__*,char*) ;
 int memset (int ,int ,int) ;
 int mnttab_file_name ;
 int mount_fs (TYPE_2__*,int,int ,int ,int ,int ,int *,int ,int) ;
 int plog (int ,char*) ;

__attribute__((used)) static int
mount_udf(char *mntdir, char *fs_name, char *opts, int on_autofs)
{
 udf_args_t udf_args;
 mntent_t mnt;
 int flags;
 char *str;







 MTYPE_TYPE type = MOUNT_TYPE_UDF;
 str = ((void*)0);
 memset((voidp) &udf_args, 0, sizeof(udf_args));




 memset((voidp)&mnt, 0, sizeof(mnt));
 mnt.mnt_dir = mntdir;
 mnt.mnt_fsname = fs_name;
 mnt.mnt_type = MNTTAB_TYPE_UDF;
 mnt.mnt_opts = opts;

 flags = compute_mount_flags(&mnt);
 return mount_fs(&mnt, flags, (caddr_t)&udf_args, 0, type, 0, ((void*)0),
     mnttab_file_name, on_autofs);
}
