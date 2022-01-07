
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct task_struct {int dummy; } ;
struct qstr {char const* name; int len; int hash; } ;
struct inode {int i_ino; int i_mode; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; } ;
typedef struct dentry* (* instantiate_t ) (struct inode*,struct dentry*,struct task_struct*,void const*) ;
typedef int ino_t ;
typedef int (* filldir_t ) (void*,char const*,int,int ,int,unsigned int) ;


 unsigned int DT_UNKNOWN ;
 scalar_t__ IS_ERR (struct dentry*) ;
 struct dentry* d_alloc (struct dentry*,struct qstr*) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int dput (struct dentry*) ;
 int find_inode_number (struct dentry*,struct qstr*) ;
 int full_name_hash (char const*,int) ;

int proc_fill_cache(struct file *filp, void *dirent, filldir_t filldir,
 const char *name, int len,
 instantiate_t instantiate, struct task_struct *task, const void *ptr)
{
 struct dentry *child, *dir = filp->f_path.dentry;
 struct inode *inode;
 struct qstr qname;
 ino_t ino = 0;
 unsigned type = DT_UNKNOWN;

 qname.name = name;
 qname.len = len;
 qname.hash = full_name_hash(name, len);

 child = d_lookup(dir, &qname);
 if (!child) {
  struct dentry *new;
  new = d_alloc(dir, &qname);
  if (new) {
   child = instantiate(dir->d_inode, new, task, ptr);
   if (child)
    dput(new);
   else
    child = new;
  }
 }
 if (!child || IS_ERR(child) || !child->d_inode)
  goto end_instantiate;
 inode = child->d_inode;
 if (inode) {
  ino = inode->i_ino;
  type = inode->i_mode >> 12;
 }
 dput(child);
end_instantiate:
 if (!ino)
  ino = find_inode_number(dir, &qname);
 if (!ino)
  ino = 1;
 return filldir(dirent, name, len, filp->f_pos, ino, type);
}
