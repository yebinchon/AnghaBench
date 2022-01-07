
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
struct reiserfs_dentry_buf {scalar_t__ count; struct dentry** dentries; TYPE_4__* xadir; } ;
struct TYPE_6__ {int name; } ;
struct dentry {TYPE_2__ d_name; int d_sb; int d_inode; } ;
typedef int loff_t ;
struct TYPE_7__ {int name; } ;
struct TYPE_8__ {TYPE_3__ d_name; TYPE_1__* d_inode; } ;
struct TYPE_5__ {int i_mutex; } ;


 scalar_t__ ARRAY_SIZE (struct dentry**) ;
 int EIO ;
 int ENOSPC ;
 scalar_t__ IS_ERR (struct dentry*) ;
 int PTR_ERR (struct dentry*) ;
 int WARN_ON_ONCE (int) ;
 int dput (struct dentry*) ;
 struct dentry* lookup_one_len (char const*,TYPE_4__*,int) ;
 int mutex_is_locked (int *) ;
 int reiserfs_error (int ,char*,char*,int ,int ) ;

__attribute__((used)) static int
fill_with_dentries(void *buf, const char *name, int namelen, loff_t offset,
      u64 ino, unsigned int d_type)
{
 struct reiserfs_dentry_buf *dbuf = buf;
 struct dentry *dentry;
 WARN_ON_ONCE(!mutex_is_locked(&dbuf->xadir->d_inode->i_mutex));

 if (dbuf->count == ARRAY_SIZE(dbuf->dentries))
  return -ENOSPC;

 if (name[0] == '.' && (name[1] == '\0' ||
          (name[1] == '.' && name[2] == '\0')))
  return 0;

 dentry = lookup_one_len(name, dbuf->xadir, namelen);
 if (IS_ERR(dentry)) {
  return PTR_ERR(dentry);
 } else if (!dentry->d_inode) {

  reiserfs_error(dentry->d_sb, "xattr-20003",
          "Corrupted directory: xattr %s listed but "
          "not found for file %s.\n",
          dentry->d_name.name, dbuf->xadir->d_name.name);
  dput(dentry);
  return -EIO;
 }

 dbuf->dentries[dbuf->count++] = dentry;
 return 0;
}
