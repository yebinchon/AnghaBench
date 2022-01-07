
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct tracer {int (* splice_read ) (struct trace_iterator*,struct file*,int *,struct pipe_inode_info*,size_t,unsigned int) ;} ;
struct TYPE_3__ {int len; } ;
struct trace_iterator {int mutex; TYPE_1__ seq; int ent; struct tracer* trace; } ;
struct splice_pipe_desc {unsigned int nr_pages; unsigned int flags; int spd_release; int * ops; struct partial_page* partial; struct page** pages; } ;
struct pipe_inode_info {int dummy; } ;
struct partial_page {int len; scalar_t__ offset; } ;
struct page {int dummy; } ;
struct file {struct trace_iterator* private_data; } ;
typedef int ssize_t ;
typedef int loff_t ;


 int EFAULT ;
 int GFP_KERNEL ;
 int PIPE_BUFFERS ;
 int __free_page (struct page*) ;
 struct page* alloc_page (int ) ;
 struct tracer* current_trace ;
 int find_next_entry_inc (struct trace_iterator*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int page_address (struct page*) ;
 int splice_to_pipe (struct pipe_inode_info*,struct splice_pipe_desc*) ;
 int stub1 (struct trace_iterator*,struct file*,int *,struct pipe_inode_info*,size_t,unsigned int) ;
 int trace_event_read_lock () ;
 int trace_event_read_unlock () ;
 int trace_seq_init (TYPE_1__*) ;
 int trace_seq_to_buffer (TYPE_1__*,int ,int ) ;
 int trace_types_lock ;
 size_t tracing_fill_pipe_page (size_t,struct trace_iterator*) ;
 int tracing_pipe_buf_ops ;
 int tracing_spd_release_pipe ;
 int tracing_wait_pipe (struct file*) ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static ssize_t tracing_splice_read_pipe(struct file *filp,
     loff_t *ppos,
     struct pipe_inode_info *pipe,
     size_t len,
     unsigned int flags)
{
 struct page *pages[PIPE_BUFFERS];
 struct partial_page partial[PIPE_BUFFERS];
 struct trace_iterator *iter = filp->private_data;
 struct splice_pipe_desc spd = {
  .pages = pages,
  .partial = partial,
  .nr_pages = 0,
  .flags = flags,
  .ops = &tracing_pipe_buf_ops,
  .spd_release = tracing_spd_release_pipe,
 };
 static struct tracer *old_tracer;
 ssize_t ret;
 size_t rem;
 unsigned int i;


 mutex_lock(&trace_types_lock);
 if (unlikely(old_tracer != current_trace && current_trace)) {
  old_tracer = current_trace;
  *iter->trace = *current_trace;
 }
 mutex_unlock(&trace_types_lock);

 mutex_lock(&iter->mutex);

 if (iter->trace->splice_read) {
  ret = iter->trace->splice_read(iter, filp,
            ppos, pipe, len, flags);
  if (ret)
   goto out_err;
 }

 ret = tracing_wait_pipe(filp);
 if (ret <= 0)
  goto out_err;

 if (!iter->ent && !find_next_entry_inc(iter)) {
  ret = -EFAULT;
  goto out_err;
 }

 trace_event_read_lock();


 for (i = 0, rem = len; i < PIPE_BUFFERS && rem; i++) {
  pages[i] = alloc_page(GFP_KERNEL);
  if (!pages[i])
   break;

  rem = tracing_fill_pipe_page(rem, iter);


  ret = trace_seq_to_buffer(&iter->seq,
       page_address(pages[i]),
       iter->seq.len);
  if (ret < 0) {
   __free_page(pages[i]);
   break;
  }
  partial[i].offset = 0;
  partial[i].len = iter->seq.len;

  trace_seq_init(&iter->seq);
 }

 trace_event_read_unlock();
 mutex_unlock(&iter->mutex);

 spd.nr_pages = i;

 return splice_to_pipe(pipe, &spd);

out_err:
 mutex_unlock(&iter->mutex);

 return ret;
}
