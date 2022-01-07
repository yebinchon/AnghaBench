
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qstr {int dummy; } ;
struct inode {int dummy; } ;


 int ENOENT ;
 struct inode* ERR_PTR (int ) ;
 struct inode* gfs2_lookupi (struct inode*,struct qstr*,int) ;
 int gfs2_str2qstr (struct qstr*,char const*) ;

struct inode *gfs2_lookup_simple(struct inode *dip, const char *name)
{
 struct qstr qstr;
 struct inode *inode;
 gfs2_str2qstr(&qstr, name);
 inode = gfs2_lookupi(dip, &qstr, 1);





 if (inode == ((void*)0))
  return ERR_PTR(-ENOENT);
 else
  return inode;
}
