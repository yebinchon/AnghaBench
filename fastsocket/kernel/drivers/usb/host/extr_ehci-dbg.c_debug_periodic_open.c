
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_private; } ;
struct file {struct debug_buffer* private_data; } ;
struct debug_buffer {int alloc_size; } ;


 int ENOMEM ;
 int PAGE_SIZE ;
 struct debug_buffer* alloc_buffer (int ,int ) ;
 int fill_periodic_buffer ;

__attribute__((used)) static int debug_periodic_open(struct inode *inode, struct file *file)
{
 struct debug_buffer *buf;
 buf = alloc_buffer(inode->i_private, fill_periodic_buffer);
 if (!buf)
  return -ENOMEM;

 buf->alloc_size = (sizeof(void *) == 4 ? 6 : 8)*PAGE_SIZE;
 file->private_data = buf;
 return 0;
}
