
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb_sb_info {int dummy; } ;
struct dentry {int dummy; } ;
typedef int __u16 ;


 int get_seconds () ;
 struct smb_sb_info* server_from_dentry (struct dentry*) ;
 int smb_proc_close (struct smb_sb_info*,int ,int ) ;

int
smb_close_fileid(struct dentry *dentry, __u16 fileid)
{
 struct smb_sb_info *server = server_from_dentry(dentry);
 int result;

 result = smb_proc_close(server, fileid, get_seconds());
 return result;
}
