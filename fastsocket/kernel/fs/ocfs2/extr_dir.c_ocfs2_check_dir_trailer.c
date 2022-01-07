
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ocfs2_dir_block_trailer {unsigned long long db_signature; int db_blkno; int db_parent_dinode; } ;
struct inode {int i_sb; } ;
struct buffer_head {scalar_t__ b_blocknr; } ;
struct TYPE_2__ {scalar_t__ ip_blkno; } ;


 int EINVAL ;
 TYPE_1__* OCFS2_I (struct inode*) ;
 int OCFS2_IS_VALID_DIR_TRAILER (struct ocfs2_dir_block_trailer*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int ocfs2_error (int ,char*,unsigned long long,unsigned long long,...) ;
 struct ocfs2_dir_block_trailer* ocfs2_trailer_from_bh (struct buffer_head*,int ) ;

__attribute__((used)) static int ocfs2_check_dir_trailer(struct inode *dir, struct buffer_head *bh)
{
 int rc = 0;
 struct ocfs2_dir_block_trailer *trailer;

 trailer = ocfs2_trailer_from_bh(bh, dir->i_sb);
 if (!OCFS2_IS_VALID_DIR_TRAILER(trailer)) {
  rc = -EINVAL;
  ocfs2_error(dir->i_sb,
       "Invalid dirblock #%llu: "
       "signature = %.*s\n",
       (unsigned long long)bh->b_blocknr, 7,
       trailer->db_signature);
  goto out;
 }
 if (le64_to_cpu(trailer->db_blkno) != bh->b_blocknr) {
  rc = -EINVAL;
  ocfs2_error(dir->i_sb,
       "Directory block #%llu has an invalid "
       "db_blkno of %llu",
       (unsigned long long)bh->b_blocknr,
       (unsigned long long)le64_to_cpu(trailer->db_blkno));
  goto out;
 }
 if (le64_to_cpu(trailer->db_parent_dinode) !=
     OCFS2_I(dir)->ip_blkno) {
  rc = -EINVAL;
  ocfs2_error(dir->i_sb,
       "Directory block #%llu on dinode "
       "#%llu has an invalid parent_dinode "
       "of %llu",
       (unsigned long long)bh->b_blocknr,
       (unsigned long long)OCFS2_I(dir)->ip_blkno,
       (unsigned long long)le64_to_cpu(trailer->db_blkno));
  goto out;
 }
out:
 return rc;
}
