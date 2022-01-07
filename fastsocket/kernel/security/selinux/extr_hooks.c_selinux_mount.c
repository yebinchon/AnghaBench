
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct path {int dentry; TYPE_1__* mnt; } ;
struct cred {int dummy; } ;
struct TYPE_2__ {int mnt_sb; } ;


 int FILESYSTEM__REMOUNT ;
 int FILE__MOUNTON ;
 unsigned long MS_REMOUNT ;
 struct cred* current_cred () ;
 int dentry_has_perm (struct cred const*,TYPE_1__*,int ,int ) ;
 int superblock_has_perm (struct cred const*,int ,int ,int *) ;

__attribute__((used)) static int selinux_mount(char *dev_name,
    struct path *path,
    char *type,
    unsigned long flags,
    void *data)
{
 const struct cred *cred = current_cred();

 if (flags & MS_REMOUNT)
  return superblock_has_perm(cred, path->mnt->mnt_sb,
        FILESYSTEM__REMOUNT, ((void*)0));
 else
  return dentry_has_perm(cred, path->mnt, path->dentry,
           FILE__MOUNTON);
}
