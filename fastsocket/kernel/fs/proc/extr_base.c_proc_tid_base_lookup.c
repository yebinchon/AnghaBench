
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nameidata {int dummy; } ;
struct inode {int dummy; } ;
struct dentry {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 struct dentry* proc_pident_lookup (struct inode*,struct dentry*,int ,int ) ;
 int tid_base_stuff ;

__attribute__((used)) static struct dentry *proc_tid_base_lookup(struct inode *dir, struct dentry *dentry, struct nameidata *nd){
 return proc_pident_lookup(dir, dentry,
      tid_base_stuff, ARRAY_SIZE(tid_base_stuff));
}
