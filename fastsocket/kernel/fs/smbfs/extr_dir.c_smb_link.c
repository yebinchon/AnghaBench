
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int DEBUG1 (char*,int ,int ) ;
 int DENTRY_PATH (struct dentry*) ;
 int server_from_dentry (struct dentry*) ;
 int smb_instantiate (struct dentry*,int ,int ) ;
 int smb_invalid_dir_cache (struct inode*) ;
 int smb_proc_link (int ,struct dentry*,struct dentry*) ;
 int smb_renew_times (struct dentry*) ;

__attribute__((used)) static int
smb_link(struct dentry *dentry, struct inode *dir, struct dentry *new_dentry)
{
 int error;

 DEBUG1("smb_link old=%s/%s new=%s/%s\n",
        DENTRY_PATH(dentry), DENTRY_PATH(new_dentry));
 smb_invalid_dir_cache(dir);
 error = smb_proc_link(server_from_dentry(dentry), dentry, new_dentry);
 if (!error) {
  smb_renew_times(dentry);
  error = smb_instantiate(new_dentry, 0, 0);
 }
 return error;
}
