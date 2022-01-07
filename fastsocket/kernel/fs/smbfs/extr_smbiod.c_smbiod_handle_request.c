
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int rstate; } ;


 int PARANOIA (char*) ;
 int SMB_RECV_DROP ;

__attribute__((used)) static void smbiod_handle_request(struct smb_sb_info *server)
{
 PARANOIA("smbiod got a request ... and we don't implement oplocks!\n");
 server->rstate = SMB_RECV_DROP;
}
