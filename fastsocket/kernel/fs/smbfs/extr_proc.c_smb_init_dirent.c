
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {TYPE_1__* mnt; } ;
struct smb_fattr {int f_nlink; scalar_t__ f_unix; int f_gid; int f_uid; } ;
struct TYPE_2__ {int gid; int uid; } ;


 int memset (struct smb_fattr*,int ,int) ;

__attribute__((used)) static void
smb_init_dirent(struct smb_sb_info *server, struct smb_fattr *fattr)
{
 memset(fattr, 0, sizeof(*fattr));

 fattr->f_nlink = 1;
 fattr->f_uid = server->mnt->uid;
 fattr->f_gid = server->mnt->gid;
 fattr->f_unix = 0;
}
