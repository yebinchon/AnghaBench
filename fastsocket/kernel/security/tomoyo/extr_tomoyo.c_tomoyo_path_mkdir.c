
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* member_1; int member_0; int mnt; } ;
struct dentry {int dummy; } ;


 int TOMOYO_TYPE_MKDIR_ACL ;
 int tomoyo_check_1path_perm (int ,int ,struct path*) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_path_mkdir(struct path *parent, struct dentry *dentry,
        int mode)
{
 struct path path = { parent->mnt, dentry };
 return tomoyo_check_1path_perm(tomoyo_domain(),
           TOMOYO_TYPE_MKDIR_ACL,
           &path);
}
