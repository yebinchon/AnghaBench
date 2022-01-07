
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct splice_pipe_desc {unsigned int flags; int nr_pages; struct partial_page* partial; struct page** pages; int spd_release; int * ops; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int len; unsigned long private; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct ftrace_buffer_info {int cpu; TYPE_1__* tr; } ;
struct file {struct ftrace_buffer_info* private_data; } ;
struct buffer_ref {int ref; int page; int buffer; } ;
typedef size_t ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {int buffer; } ;


 size_t EAGAIN ;
 size_t EINVAL ;
 int GFP_KERNEL ;
 size_t PAGE_MASK ;
 int PAGE_SIZE ;
 int PIPE_BUFFERS ;
 unsigned int SPLICE_F_NONBLOCK ;
 int WARN_ONCE (int,char*) ;
 int buffer_pipe_buf_ops ;
 int buffer_spd_release ;
 int kfree (struct buffer_ref*) ;
 struct buffer_ref* kzalloc (int,int ) ;
 int memset (int ,int ,int) ;
 int ring_buffer_alloc_read_page (int ) ;
 int ring_buffer_entries_cpu (int ,int ) ;
 int ring_buffer_free_read_page (int ,int ) ;
 int ring_buffer_page_len (int ) ;
 int ring_buffer_read_page (int ,int *,size_t,int ,int) ;
 size_t splice_to_pipe (struct pipe_inode_info*,struct splice_pipe_desc*) ;
 struct page* virt_to_page (int ) ;

__attribute__((used)) static ssize_t
tracing_buffers_splice_read(struct file *file, loff_t *ppos,
       struct pipe_inode_info *pipe, size_t len,
       unsigned int flags)
{
 struct ftrace_buffer_info *info = file->private_data;
 struct partial_page partial[PIPE_BUFFERS];
 struct page *pages[PIPE_BUFFERS];
 struct splice_pipe_desc spd = {
  .pages = pages,
  .partial = partial,
  .flags = flags,
  .ops = &buffer_pipe_buf_ops,
  .spd_release = buffer_spd_release,
 };
 struct buffer_ref *ref;
 int entries, size, i;
 size_t ret;

 if (*ppos & (PAGE_SIZE - 1)) {
  WARN_ONCE(1, "Ftrace: previous read must page-align\n");
  return -EINVAL;
 }

 if (len & (PAGE_SIZE - 1)) {
  WARN_ONCE(1, "Ftrace: splice_read should page-align\n");
  if (len < PAGE_SIZE)
   return -EINVAL;
  len &= PAGE_MASK;
 }

 entries = ring_buffer_entries_cpu(info->tr->buffer, info->cpu);

 for (i = 0; i < PIPE_BUFFERS && len && entries; i++, len -= PAGE_SIZE) {
  struct page *page;
  int r;

  ref = kzalloc(sizeof(*ref), GFP_KERNEL);
  if (!ref)
   break;

  ref->ref = 1;
  ref->buffer = info->tr->buffer;
  ref->page = ring_buffer_alloc_read_page(ref->buffer);
  if (!ref->page) {
   kfree(ref);
   break;
  }

  r = ring_buffer_read_page(ref->buffer, &ref->page,
       len, info->cpu, 1);
  if (r < 0) {
   ring_buffer_free_read_page(ref->buffer,
         ref->page);
   kfree(ref);
   break;
  }





  size = ring_buffer_page_len(ref->page);
  if (size < PAGE_SIZE)
   memset(ref->page + size, 0, PAGE_SIZE - size);

  page = virt_to_page(ref->page);

  spd.pages[i] = page;
  spd.partial[i].len = PAGE_SIZE;
  spd.partial[i].offset = 0;
  spd.partial[i].private = (unsigned long)ref;
  spd.nr_pages++;
  *ppos += PAGE_SIZE;

  entries = ring_buffer_entries_cpu(info->tr->buffer, info->cpu);
 }

 spd.nr_pages = i;


 if (!spd.nr_pages) {
  if (flags & SPLICE_F_NONBLOCK)
   ret = -EAGAIN;
  else
   ret = 0;

  return ret;
 }

 ret = splice_to_pipe(pipe, &spd);

 return ret;
}
