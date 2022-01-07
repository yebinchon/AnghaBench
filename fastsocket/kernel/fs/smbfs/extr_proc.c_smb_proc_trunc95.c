
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smb_sb_info {int dummy; } ;
struct inode {int dummy; } ;
typedef int loff_t ;
struct TYPE_2__ {int fileid; } ;


 TYPE_1__* SMB_I (struct inode*) ;
 struct smb_sb_info* server_from_inode (struct inode*) ;
 int smb_proc_flush (struct smb_sb_info*,int ) ;
 int smb_proc_trunc32 (struct inode*,int ) ;

__attribute__((used)) static int
smb_proc_trunc95(struct inode *inode, loff_t length)
{
 struct smb_sb_info *server = server_from_inode(inode);
 int result = smb_proc_trunc32(inode, length);
 smb_proc_flush(server, SMB_I(inode)->fileid);
 return result;
}
