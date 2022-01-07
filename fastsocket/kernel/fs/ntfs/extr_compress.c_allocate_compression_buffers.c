
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BUG_ON (int ) ;
 int ENOMEM ;
 int NTFS_MAX_CB_SIZE ;
 int ntfs_compression_buffer ;
 int vmalloc (int ) ;

int allocate_compression_buffers(void)
{
 BUG_ON(ntfs_compression_buffer);

 ntfs_compression_buffer = vmalloc(NTFS_MAX_CB_SIZE);
 if (!ntfs_compression_buffer)
  return -ENOMEM;
 return 0;
}
