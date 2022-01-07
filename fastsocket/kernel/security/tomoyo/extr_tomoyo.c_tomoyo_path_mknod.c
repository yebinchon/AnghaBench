
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {struct dentry* member_1; int member_0; int mnt; } ;
struct dentry {int dummy; } ;





 int S_IFMT ;

 int TOMOYO_TYPE_CREATE_ACL ;
 int TOMOYO_TYPE_MKBLOCK_ACL ;
 int TOMOYO_TYPE_MKCHAR_ACL ;
 int TOMOYO_TYPE_MKFIFO_ACL ;
 int TOMOYO_TYPE_MKSOCK_ACL ;
 int tomoyo_check_1path_perm (int ,int,struct path*) ;
 int tomoyo_domain () ;

__attribute__((used)) static int tomoyo_path_mknod(struct path *parent, struct dentry *dentry,
        int mode, unsigned int dev)
{
 struct path path = { parent->mnt, dentry };
 int type = TOMOYO_TYPE_CREATE_ACL;

 switch (mode & S_IFMT) {
 case 130:
  type = TOMOYO_TYPE_MKCHAR_ACL;
  break;
 case 131:
  type = TOMOYO_TYPE_MKBLOCK_ACL;
  break;
 case 129:
  type = TOMOYO_TYPE_MKFIFO_ACL;
  break;
 case 128:
  type = TOMOYO_TYPE_MKSOCK_ACL;
  break;
 }
 return tomoyo_check_1path_perm(tomoyo_domain(),
           type, &path);
}
