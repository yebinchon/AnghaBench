
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v9fs_dentry {int lock; int fidlist; } ;
struct p9_fid {int dlist; int fid; } ;
struct TYPE_2__ {int name; } ;
struct dentry {struct v9fs_dentry* d_fsdata; TYPE_1__ d_name; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int P9_DEBUG_VFS ;
 int P9_DPRINTK (int ,char*,int ,int ) ;
 struct v9fs_dentry* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;

int v9fs_fid_add(struct dentry *dentry, struct p9_fid *fid)
{
 struct v9fs_dentry *dent;

 P9_DPRINTK(P9_DEBUG_VFS, "fid %d dentry %s\n",
     fid->fid, dentry->d_name.name);

 dent = dentry->d_fsdata;
 if (!dent) {
  dent = kmalloc(sizeof(struct v9fs_dentry), GFP_KERNEL);
  if (!dent)
   return -ENOMEM;

  spin_lock_init(&dent->lock);
  INIT_LIST_HEAD(&dent->fidlist);
  dentry->d_fsdata = dent;
 }

 spin_lock(&dent->lock);
 list_add(&fid->dlist, &dent->fidlist);
 spin_unlock(&dent->lock);

 return 0;
}
