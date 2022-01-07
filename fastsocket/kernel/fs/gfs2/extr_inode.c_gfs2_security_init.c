
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_inode; } ;


 int EOPNOTSUPP ;
 int GFS2_EATYPE_SECURITY ;
 int gfs2_xattr_set (int *,int ,char*,void*,size_t,int ) ;
 int kfree (char*) ;
 int security_inode_init_security (int *,int *,char**,void**,size_t*) ;

__attribute__((used)) static int gfs2_security_init(struct gfs2_inode *dip, struct gfs2_inode *ip)
{
 int err;
 size_t len;
 void *value;
 char *name;

 err = security_inode_init_security(&ip->i_inode, &dip->i_inode,
        &name, &value, &len);

 if (err) {
  if (err == -EOPNOTSUPP)
   return 0;
  return err;
 }

 err = gfs2_xattr_set(&ip->i_inode, GFS2_EATYPE_SECURITY, name, value, len, 0);
 kfree(value);
 kfree(name);

 return err;
}
