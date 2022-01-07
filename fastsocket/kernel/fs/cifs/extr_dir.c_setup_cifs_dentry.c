
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct dentry {int * d_op; } ;
struct cifs_tcon {scalar_t__ nocase; } ;


 int cifs_ci_dentry_ops ;
 int cifs_dentry_ops ;
 int d_instantiate (struct dentry*,struct inode*) ;

__attribute__((used)) static void setup_cifs_dentry(struct cifs_tcon *tcon,
         struct dentry *direntry,
         struct inode *newinode)
{
 if (tcon->nocase)
  direntry->d_op = &cifs_ci_dentry_ops;
 else
  direntry->d_op = &cifs_dentry_ops;
 d_instantiate(direntry, newinode);
}
