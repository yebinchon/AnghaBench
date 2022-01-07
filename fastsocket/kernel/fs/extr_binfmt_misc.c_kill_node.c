
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dentry {TYPE_1__* d_inode; } ;
struct TYPE_5__ {struct dentry* dentry; int list; } ;
struct TYPE_4__ {int i_nlink; } ;
typedef TYPE_2__ Node ;


 int bm_mnt ;
 int d_drop (struct dentry*) ;
 int dput (struct dentry*) ;
 int entries_lock ;
 int entry_count ;
 int list_del_init (int *) ;
 int simple_release_fs (int *,int *) ;
 int write_lock (int *) ;
 int write_unlock (int *) ;

__attribute__((used)) static void kill_node(Node *e)
{
 struct dentry *dentry;

 write_lock(&entries_lock);
 dentry = e->dentry;
 if (dentry) {
  list_del_init(&e->list);
  e->dentry = ((void*)0);
 }
 write_unlock(&entries_lock);

 if (dentry) {
  dentry->d_inode->i_nlink--;
  d_drop(dentry);
  dput(dentry);
  simple_release_fs(&bm_mnt, &entry_count);
 }
}
