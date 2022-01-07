
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct ocfs2_recovery_chunk {int rc_chunk; int rc_list; void* rc_bitmap; } ;
struct ocfs2_local_disk_chunk {int dqc_bitmap; } ;
struct list_head {int dummy; } ;


 int ENOMEM ;
 int GFP_NOFS ;
 int kfree (struct ocfs2_recovery_chunk*) ;
 void* kmalloc (int,int ) ;
 int list_add_tail (int *,struct list_head*) ;
 int memcpy (void*,int ,int) ;
 int ol_chunk_entries (struct super_block*) ;

__attribute__((used)) static int ocfs2_add_recovery_chunk(struct super_block *sb,
        struct ocfs2_local_disk_chunk *dchunk,
        int chunk,
        struct list_head *head)
{
 struct ocfs2_recovery_chunk *rc;

 rc = kmalloc(sizeof(struct ocfs2_recovery_chunk), GFP_NOFS);
 if (!rc)
  return -ENOMEM;
 rc->rc_chunk = chunk;
 rc->rc_bitmap = kmalloc(sb->s_blocksize, GFP_NOFS);
 if (!rc->rc_bitmap) {
  kfree(rc);
  return -ENOMEM;
 }
 memcpy(rc->rc_bitmap, dchunk->dqc_bitmap,
        (ol_chunk_entries(sb) + 7) >> 3);
 list_add_tail(&rc->rc_list, head);
 return 0;
}
