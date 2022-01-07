
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct nameidata {int dummy; } ;
struct inode {int i_sb; int i_hash; } ;
struct hfs_iget_data {int * member_1; int * member_0; } ;
struct hfs_find_data {TYPE_2__* search_key; } ;
struct TYPE_5__ {int name; } ;
struct dentry {TYPE_1__ d_name; } ;
typedef int rec ;
typedef int hfs_cat_rec ;
struct TYPE_8__ {struct inode* rsrc_inode; int cat_key; } ;
struct TYPE_7__ {int rsrc_inodes; int cat_tree; } ;
struct TYPE_6__ {int cat; } ;


 int ENOMEM ;
 struct dentry* ERR_PTR (int) ;
 TYPE_4__* HFS_I (struct inode*) ;
 scalar_t__ HFS_IS_RSRC (struct inode*) ;
 TYPE_3__* HFS_SB (int ) ;
 int d_add (struct dentry*,struct inode*) ;
 int hfs_brec_read (struct hfs_find_data*,int *,int) ;
 int hfs_find_exit (struct hfs_find_data*) ;
 int hfs_find_init (int ,struct hfs_find_data*) ;
 int hfs_read_inode (struct inode*,struct hfs_iget_data*) ;
 int hlist_add_head (int *,int *) ;
 int igrab (struct inode*) ;
 int iput (struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 struct inode* new_inode (int ) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static struct dentry *hfs_file_lookup(struct inode *dir, struct dentry *dentry,
          struct nameidata *nd)
{
 struct inode *inode = ((void*)0);
 hfs_cat_rec rec;
 struct hfs_find_data fd;
 int res;

 if (HFS_IS_RSRC(dir) || strcmp(dentry->d_name.name, "rsrc"))
  goto out;

 inode = HFS_I(dir)->rsrc_inode;
 if (inode)
  goto out;

 inode = new_inode(dir->i_sb);
 if (!inode)
  return ERR_PTR(-ENOMEM);

 hfs_find_init(HFS_SB(dir->i_sb)->cat_tree, &fd);
 fd.search_key->cat = HFS_I(dir)->cat_key;
 res = hfs_brec_read(&fd, &rec, sizeof(rec));
 if (!res) {
  struct hfs_iget_data idata = { ((void*)0), &rec };
  hfs_read_inode(inode, &idata);
 }
 hfs_find_exit(&fd);
 if (res) {
  iput(inode);
  return ERR_PTR(res);
 }
 HFS_I(inode)->rsrc_inode = dir;
 HFS_I(dir)->rsrc_inode = inode;
 igrab(dir);
 hlist_add_head(&inode->i_hash, &HFS_SB(dir->i_sb)->rsrc_inodes);
 mark_inode_dirty(inode);
out:
 d_add(dentry, inode);
 return ((void*)0);
}
