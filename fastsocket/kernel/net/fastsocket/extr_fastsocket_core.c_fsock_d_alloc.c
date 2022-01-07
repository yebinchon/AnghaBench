
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct socket {int dummy; } ;
struct qstr {int len; int name; int hash; } ;
struct inode {int * i_sb; } ;
struct TYPE_4__ {int d_child; } ;
struct TYPE_3__ {char* name; int len; int hash; } ;
struct dentry {char* d_iname; int d_flags; int * d_op; struct inode* d_inode; int * d_parent; int * d_sb; TYPE_2__ d_u; int d_alias; int d_subdirs; int d_lru; int d_hash; int * d_fsdata; int d_lock; int d_count; TYPE_1__ d_name; } ;


 int DCACHE_DISCONNECTED ;
 int DCACHE_FASTSOCKET ;
 int DCACHE_UNHASHED ;
 int DEBUG ;
 int DNAME_INLINE_LEN ;
 int DPRINTK (int ,char*,struct dentry*) ;
 int GFP_KERNEL ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 struct inode* SOCK_INODE (struct socket*) ;
 int atomic_set (int *,int) ;
 int dentry_cache ;
 int fastsockfs_dentry_operations ;
 char* kmalloc (int,int ) ;
 struct dentry* kmem_cache_alloc (int ,int ) ;
 int kmem_cache_free (int ,struct dentry*) ;
 int memcpy (char*,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct dentry *fsock_d_alloc(struct socket *sock, struct dentry *parent, const struct qstr *name)
{
 struct dentry *dentry;
 char *dname;
 struct inode *inode;

 dentry = kmem_cache_alloc(dentry_cache, GFP_KERNEL);
 if (!dentry)
  return ((void*)0);

 DPRINTK(DEBUG, "\tAllocat dentry 0x%p\n", dentry);

 if (name->len > DNAME_INLINE_LEN-1) {
  dname = kmalloc(name->len + 1, GFP_KERNEL);
  if (!dname) {
   kmem_cache_free(dentry_cache, dentry);
   return ((void*)0);
  }
 } else {
  dname = dentry->d_iname;
 }

 dentry->d_name.name = dname;

 dentry->d_name.len = name->len;
 dentry->d_name.hash = name->hash;
 memcpy(dname, name->name, name->len);
 dname[name->len] = 0;

 atomic_set(&dentry->d_count, 1);
 dentry->d_flags = DCACHE_UNHASHED;
 spin_lock_init(&dentry->d_lock);
 dentry->d_inode = ((void*)0);
 dentry->d_parent = ((void*)0);
 dentry->d_sb = ((void*)0);
 dentry->d_op = ((void*)0);
 dentry->d_fsdata = ((void*)0);
 INIT_HLIST_NODE(&dentry->d_hash);
 INIT_LIST_HEAD(&dentry->d_lru);
 INIT_LIST_HEAD(&dentry->d_subdirs);
 INIT_LIST_HEAD(&dentry->d_alias);

 INIT_LIST_HEAD(&dentry->d_u.d_child);

 inode = SOCK_INODE(sock);

 dentry->d_sb = inode->i_sb;
 dentry->d_parent = ((void*)0);
 dentry->d_flags |= DCACHE_FASTSOCKET | DCACHE_DISCONNECTED;
 dentry->d_inode = inode;

 dentry->d_op = &fastsockfs_dentry_operations;

 return dentry;
}
