
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v9fs_session_info {int dummy; } ;
struct super_block {struct v9fs_session_info* s_fs_info; int s_root; } ;


 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,...) ;
 int kfree (struct v9fs_session_info*) ;
 int kill_anon_super (struct super_block*) ;
 int v9fs_dentry_release (int ) ;
 int v9fs_session_close (struct v9fs_session_info*) ;

__attribute__((used)) static void v9fs_kill_super(struct super_block *s)
{
 struct v9fs_session_info *v9ses = s->s_fs_info;

 P9_DPRINTK(P9_DEBUG_VFS, " %p\n", s);

 v9fs_dentry_release(s->s_root);

 kill_anon_super(s);

 v9fs_session_close(v9ses);
 kfree(v9ses);
 s->s_fs_info = ((void*)0);
 P9_DPRINTK(P9_DEBUG_VFS, "exiting kill_super\n");
}
