
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* member_1; int member_0; int mnt; } ;
struct dentry {int dummy; } ;


 int TOMOYO_TYPE_LINK_ACL ;
 int tomoyo_check_2path_perm (int ,int ,struct path*,struct path*) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_path_link(struct dentry *old_dentry, struct path *new_dir,
       struct dentry *new_dentry)
{
 struct path path1 = { new_dir->mnt, old_dentry };
 struct path path2 = { new_dir->mnt, new_dentry };
 return tomoyo_check_2path_perm(tomoyo_domain(),
           TOMOYO_TYPE_LINK_ACL,
           &path1, &path2);
}
