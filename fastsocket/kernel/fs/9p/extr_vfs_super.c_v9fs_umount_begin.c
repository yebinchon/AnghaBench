
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; } ;


 int v9fs_session_cancel (struct v9fs_session_info*) ;

__attribute__((used)) static void
v9fs_umount_begin(struct super_block *sb)
{
 struct v9fs_session_info *v9ses;

 v9ses = sb->s_fs_info;
 v9fs_session_cancel(v9ses);
}
