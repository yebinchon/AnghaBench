
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct dentry {int dummy; } ;


 int IS_ERR (char*) ;
 int kfree (char*) ;
 char* nd_get_link (struct nameidata*) ;

void cifs_put_link(struct dentry *direntry, struct nameidata *nd, void *cookie)
{
 char *p = nd_get_link(nd);
 if (!IS_ERR(p))
  kfree(p);
}
