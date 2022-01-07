
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int conn_complete; int conn_wq; } ;


 int EIO ;
 int HZ ;
 int current ;
 scalar_t__ signal_pending (int ) ;
 int wait_event_interruptible_timeout (int ,int ,int) ;

__attribute__((used)) static int
smb_proc_ops_wait(struct smb_sb_info *server)
{
 int result;

 result = wait_event_interruptible_timeout(server->conn_wq,
    server->conn_complete, 30*HZ);

 if (!result || signal_pending(current))
  return -EIO;

 return 0;
}
