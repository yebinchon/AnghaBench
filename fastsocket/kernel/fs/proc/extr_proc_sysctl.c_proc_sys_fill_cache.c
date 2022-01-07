
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qstr {int len; int name; int hash; } ;
struct inode {int i_mode; int i_ino; } ;
struct TYPE_2__ {struct dentry* dentry; } ;
struct file {int f_pos; TYPE_1__ f_path; } ;
struct dentry {struct inode* d_inode; int * d_op; int d_sb; } ;
struct ctl_table_header {int dummy; } ;
struct ctl_table {int procname; } ;
typedef int ino_t ;
typedef int (* filldir_t ) (void*,int ,int ,int ,int ,unsigned int) ;


 unsigned int DT_UNKNOWN ;
 int ENOMEM ;
 int d_add (struct dentry*,struct inode*) ;
 struct dentry* d_alloc (struct dentry*,struct qstr*) ;
 struct dentry* d_lookup (struct dentry*,struct qstr*) ;
 int dput (struct dentry*) ;
 int full_name_hash (int ,int ) ;
 int proc_sys_dentry_operations ;
 struct inode* proc_sys_make_inode (int ,struct ctl_table_header*,struct ctl_table*) ;
 int strlen (int ) ;

__attribute__((used)) static int proc_sys_fill_cache(struct file *filp, void *dirent,
    filldir_t filldir,
    struct ctl_table_header *head,
    struct ctl_table *table)
{
 struct dentry *child, *dir = filp->f_path.dentry;
 struct inode *inode;
 struct qstr qname;
 ino_t ino = 0;
 unsigned type = DT_UNKNOWN;

 qname.name = table->procname;
 qname.len = strlen(table->procname);
 qname.hash = full_name_hash(qname.name, qname.len);

 child = d_lookup(dir, &qname);
 if (!child) {
  child = d_alloc(dir, &qname);
  if (child) {
   inode = proc_sys_make_inode(dir->d_sb, head, table);
   if (!inode) {
    dput(child);
    return -ENOMEM;
   } else {
    child->d_op = &proc_sys_dentry_operations;
    d_add(child, inode);
   }
  } else {
   return -ENOMEM;
  }
 }
 inode = child->d_inode;
 ino = inode->i_ino;
 type = inode->i_mode >> 12;
 dput(child);
 return !!filldir(dirent, qname.name, qname.len, filp->f_pos, ino, type);
}
