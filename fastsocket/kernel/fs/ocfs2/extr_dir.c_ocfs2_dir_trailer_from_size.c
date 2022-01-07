
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_dir_block_trailer {int dummy; } ;



struct ocfs2_dir_block_trailer *ocfs2_dir_trailer_from_size(int blocksize,
           void *data)
{
 char *p = data;

 p += blocksize - sizeof(struct ocfs2_dir_block_trailer);
 return (struct ocfs2_dir_block_trailer *)p;
}
