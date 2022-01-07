
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct pstore_private {TYPE_2__* psi; int count; int id; int type; } ;
struct inode {int dummy; } ;
struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_4__ {int (* erase ) (int ,int ,int ,int ,TYPE_2__*) ;} ;
struct TYPE_3__ {int i_ctime; struct pstore_private* i_private; } ;


 int simple_unlink (struct inode*,struct dentry*) ;
 int stub1 (int ,int ,int ,int ,TYPE_2__*) ;

__attribute__((used)) static int pstore_unlink(struct inode *dir, struct dentry *dentry)
{
 struct pstore_private *p = dentry->d_inode->i_private;

 if (p->psi->erase)
  p->psi->erase(p->type, p->id, p->count,
         dentry->d_inode->i_ctime, p->psi);

 return simple_unlink(dir, dentry);
}
