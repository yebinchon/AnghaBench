
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct ftrace_buffer_info {scalar_t__ spare; TYPE_1__* tr; } ;
struct file {struct ftrace_buffer_info* private_data; } ;
struct TYPE_2__ {int buffer; } ;


 int kfree (struct ftrace_buffer_info*) ;
 int ring_buffer_free_read_page (int ,scalar_t__) ;

__attribute__((used)) static int tracing_buffers_release(struct inode *inode, struct file *file)
{
 struct ftrace_buffer_info *info = file->private_data;

 if (info->spare)
  ring_buffer_free_read_page(info->tr->buffer, info->spare);
 kfree(info);

 return 0;
}
