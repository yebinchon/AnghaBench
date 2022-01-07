
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int dummy; } ;
struct qstr {int name; } ;
struct msdos_dir_slot {int dummy; } ;
struct inode {struct timespec i_atime; struct timespec i_mtime; struct timespec i_ctime; } ;
struct fat_slot_info {int dummy; } ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_NOFS ;
 scalar_t__ IS_DIRSYNC (struct inode*) ;
 int MSDOS_SLOTS ;
 int fat_add_entries (struct inode*,struct msdos_dir_slot*,int,struct fat_slot_info*) ;
 int fat_sync_inode (struct inode*) ;
 int kfree (struct msdos_dir_slot*) ;
 struct msdos_dir_slot* kmalloc (int,int ) ;
 int mark_inode_dirty (struct inode*) ;
 int vfat_build_slots (struct inode*,int ,unsigned int,int,int,struct timespec*,struct msdos_dir_slot*,int*) ;
 unsigned int vfat_striptail_len (struct qstr*) ;

__attribute__((used)) static int vfat_add_entry(struct inode *dir, struct qstr *qname, int is_dir,
     int cluster, struct timespec *ts,
     struct fat_slot_info *sinfo)
{
 struct msdos_dir_slot *slots;
 unsigned int len;
 int err, nr_slots;

 len = vfat_striptail_len(qname);
 if (len == 0)
  return -ENOENT;

 slots = kmalloc(sizeof(*slots) * MSDOS_SLOTS, GFP_NOFS);
 if (slots == ((void*)0))
  return -ENOMEM;

 err = vfat_build_slots(dir, qname->name, len, is_dir, cluster, ts,
          slots, &nr_slots);
 if (err)
  goto cleanup;

 err = fat_add_entries(dir, slots, nr_slots, sinfo);
 if (err)
  goto cleanup;


 dir->i_ctime = dir->i_mtime = dir->i_atime = *ts;
 if (IS_DIRSYNC(dir))
  (void)fat_sync_inode(dir);
 else
  mark_inode_dirty(dir);
cleanup:
 kfree(slots);
 return err;
}
