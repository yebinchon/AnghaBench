
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_xmit; } ;
struct smb_sb_info {TYPE_1__ opt; } ;
typedef int __u16 ;


 int SMB_HEADER_LEN ;
 int VERBOSE (char*,int ,int) ;
 int smb_get_xmitsize (struct smb_sb_info*,int) ;

int
smb_get_wsize(struct smb_sb_info *server)
{

 int overhead = SMB_HEADER_LEN + 14 * sizeof(__u16) + 2 + 1 + 2;
 int size = smb_get_xmitsize(server, overhead);

 VERBOSE("xmit=%d, size=%d\n", server->opt.max_xmit, size);

 return size;
}
