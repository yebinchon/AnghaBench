
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct ocfs2_dir_block_trailer {void* db_free_rec_len; void* db_blkno; void* db_parent_dinode; void* db_compat_rec_len; int db_signature; } ;
struct inode {int i_sb; } ;
struct buffer_head {int b_blocknr; } ;
struct TYPE_2__ {int ip_blkno; } ;


 int OCFS2_DIR_TRAILER_SIGNATURE ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le64 (int ) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (struct buffer_head*,int ) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static void ocfs2_init_dir_trailer(struct inode *inode,
       struct buffer_head *bh, u16 rec_len)
{
 struct ocfs2_dir_block_trailer *trailer;

 trailer = ocfs2_trailer_from_bh(bh, inode->i_sb);
 strcpy(trailer->db_signature, OCFS2_DIR_TRAILER_SIGNATURE);
 trailer->db_compat_rec_len =
   cpu_to_le16(sizeof(struct ocfs2_dir_block_trailer));
 trailer->db_parent_dinode = cpu_to_le64(OCFS2_I(inode)->ip_blkno);
 trailer->db_blkno = cpu_to_le64(bh->b_blocknr);
 trailer->db_free_rec_len = cpu_to_le16(rec_len);
}
