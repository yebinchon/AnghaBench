
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int * s_fs_info; } ;
struct smb_sb_info {scalar_t__ conn_pid; struct smb_sb_info* ops; int state; } ;


 int CONN_INVALID ;
 int SIGTERM ;
 struct smb_sb_info* SMB_SB (struct super_block*) ;
 int kfree (struct smb_sb_info*) ;
 int kill_pid (scalar_t__,int ,int) ;
 int lock_kernel () ;
 int put_pid (scalar_t__) ;
 int smb_close_socket (struct smb_sb_info*) ;
 int smb_lock_server (struct smb_sb_info*) ;
 int smb_unload_nls (struct smb_sb_info*) ;
 int smb_unlock_server (struct smb_sb_info*) ;
 int smbiod_unregister_server (struct smb_sb_info*) ;
 int unlock_kernel () ;

__attribute__((used)) static void
smb_put_super(struct super_block *sb)
{
 struct smb_sb_info *server = SMB_SB(sb);

 lock_kernel();

 smb_lock_server(server);
 server->state = CONN_INVALID;
 smbiod_unregister_server(server);

 smb_close_socket(server);

 if (server->conn_pid)
  kill_pid(server->conn_pid, SIGTERM, 1);

 kfree(server->ops);
 smb_unload_nls(server);
 sb->s_fs_info = ((void*)0);
 smb_unlock_server(server);
 put_pid(server->conn_pid);
 kfree(server);

 unlock_kernel();
}
