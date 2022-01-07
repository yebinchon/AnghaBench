
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {unsigned int s_blocksize; } ;
struct ocfs2_dir_block_trailer {int dummy; } ;



__attribute__((used)) static inline unsigned int ocfs2_dir_trailer_blk_off(struct super_block *sb)
{
 return sb->s_blocksize - sizeof(struct ocfs2_dir_block_trailer);
}
