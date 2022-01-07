
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int kfree (char*) ;

__attribute__((used)) static void ocfs2_fast_put_link(struct dentry *dentry, struct nameidata *nd, void *cookie)
{
 char *link = cookie;

 kfree(link);
}
