
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct vfsmount {int dummy; } ;
struct page {int dummy; } ;
struct TYPE_5__ {int name; } ;
struct dentry {int d_sb; TYPE_2__* d_inode; TYPE_1__ d_name; } ;
struct afs_super_info {TYPE_4__* volume; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_3__* cell; } ;
struct TYPE_7__ {int name; } ;
struct TYPE_6__ {size_t i_size; int i_mapping; } ;


 scalar_t__ AFSVL_RWVOL ;
 struct afs_super_info* AFS_FS_S (int ) ;
 int BUG_ON (int) ;
 int EINVAL ;
 int EIO ;
 int ENOMEM ;
 struct vfsmount* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct page*) ;
 int KM_USER0 ;
 int PAGE_SIZE ;
 int PTR_ERR (struct page*) ;
 scalar_t__ PageError (struct page*) ;
 int _debug (char*,char*,...) ;
 int _enter (char*,int ) ;
 int _leave (char*,int) ;
 int afs_fs_type ;
 int free_page (unsigned long) ;
 scalar_t__ get_zeroed_page (int ) ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (char*,int ) ;
 int memcpy (char*,char*,int) ;
 int page_cache_release (struct page*) ;
 struct page* read_mapping_page (int ,int ,int *) ;
 int strcat (char*,char*) ;
 int strcpy (char*,int ) ;
 struct vfsmount* vfs_kern_mount (int *,int ,char*,char*) ;

__attribute__((used)) static struct vfsmount *afs_mntpt_do_automount(struct dentry *mntpt)
{
 struct afs_super_info *super;
 struct vfsmount *mnt;
 struct page *page = ((void*)0);
 size_t size;
 char *buf, *devname = ((void*)0), *options = ((void*)0);
 int ret;

 _enter("{%s}", mntpt->d_name.name);

 BUG_ON(!mntpt->d_inode);

 ret = -EINVAL;
 size = mntpt->d_inode->i_size;
 if (size > PAGE_SIZE - 1)
  goto error;

 ret = -ENOMEM;
 devname = (char *) get_zeroed_page(GFP_KERNEL);
 if (!devname)
  goto error;

 options = (char *) get_zeroed_page(GFP_KERNEL);
 if (!options)
  goto error;


 page = read_mapping_page(mntpt->d_inode->i_mapping, 0, ((void*)0));
 if (IS_ERR(page)) {
  ret = PTR_ERR(page);
  goto error;
 }

 ret = -EIO;
 if (PageError(page))
  goto error;

 buf = kmap_atomic(page, KM_USER0);
 memcpy(devname, buf, size);
 kunmap_atomic(buf, KM_USER0);
 page_cache_release(page);
 page = ((void*)0);


 super = AFS_FS_S(mntpt->d_sb);
 memcpy(options, "cell=", 5);
 strcpy(options + 5, super->volume->cell->name);
 if (super->volume->type == AFSVL_RWVOL)
  strcat(options, ",rwpath");


 _debug("--- attempting mount %s -o %s ---", devname, options);
 mnt = vfs_kern_mount(&afs_fs_type, 0, devname, options);
 _debug("--- mount result %p ---", mnt);

 free_page((unsigned long) devname);
 free_page((unsigned long) options);
 _leave(" = %p", mnt);
 return mnt;

error:
 if (page)
  page_cache_release(page);
 if (devname)
  free_page((unsigned long) devname);
 if (options)
  free_page((unsigned long) options);
 _leave(" = %d", ret);
 return ERR_PTR(ret);
}
