
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int DEBUG1 (char*,int ) ;
 int DENTRY_PATH (struct dentry*) ;
 int ENOMEM ;
 char* ERR_PTR (int) ;
 scalar_t__ PATH_MAX ;
 char* __getname () ;
 int __putname (char*) ;
 int nd_set_link (struct nameidata*,char*) ;
 int server_from_dentry (struct dentry*) ;
 int smb_proc_read_link (int ,struct dentry*,char*,scalar_t__) ;

__attribute__((used)) static void *smb_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 char *link = __getname();
 DEBUG1("followlink of %s/%s\n", DENTRY_PATH(dentry));

 if (!link) {
  link = ERR_PTR(-ENOMEM);
 } else {
  int len = smb_proc_read_link(server_from_dentry(dentry),
      dentry, link, PATH_MAX - 1);
  if (len < 0) {
   __putname(link);
   link = ERR_PTR(len);
  } else {
   link[len] = 0;
  }
 }
 nd_set_link(nd, link);
 return ((void*)0);
}
