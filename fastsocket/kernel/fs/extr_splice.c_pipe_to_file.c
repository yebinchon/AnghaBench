
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct file* file; } ;
struct splice_desc {unsigned int pos; unsigned int len; TYPE_1__ u; } ;
struct pipe_inode_info {int dummy; } ;
struct pipe_buffer {int offset; TYPE_2__* ops; struct page* page; } ;
struct page {int dummy; } ;
struct file {struct address_space* f_mapping; } ;
struct address_space {int dummy; } ;
struct TYPE_4__ {int (* confirm ) (struct pipe_inode_info*,struct pipe_buffer*) ;char* (* map ) (struct pipe_inode_info*,struct pipe_buffer*,int) ;int (* unmap ) (struct pipe_inode_info*,struct pipe_buffer*,char*) ;} ;


 int AOP_FLAG_UNINTERRUPTIBLE ;
 int KM_USER1 ;
 unsigned int PAGE_CACHE_MASK ;
 unsigned int PAGE_CACHE_SIZE ;
 int flush_dcache_page (struct page*) ;
 char* kmap_atomic (struct page*,int ) ;
 int kunmap_atomic (char*,int ) ;
 int memcpy (char*,char*,unsigned int) ;
 int pagecache_write_begin (struct file*,struct address_space*,unsigned int,unsigned int,int ,struct page**,void**) ;
 int pagecache_write_end (struct file*,struct address_space*,unsigned int,unsigned int,unsigned int,struct page*,void*) ;
 int stub1 (struct pipe_inode_info*,struct pipe_buffer*) ;
 char* stub2 (struct pipe_inode_info*,struct pipe_buffer*,int) ;
 int stub3 (struct pipe_inode_info*,struct pipe_buffer*,char*) ;
 scalar_t__ unlikely (int) ;

int pipe_to_file(struct pipe_inode_info *pipe, struct pipe_buffer *buf,
   struct splice_desc *sd)
{
 struct file *file = sd->u.file;
 struct address_space *mapping = file->f_mapping;
 unsigned int offset, this_len;
 struct page *page;
 void *fsdata;
 int ret;




 ret = buf->ops->confirm(pipe, buf);
 if (unlikely(ret))
  return ret;

 offset = sd->pos & ~PAGE_CACHE_MASK;

 this_len = sd->len;
 if (this_len + offset > PAGE_CACHE_SIZE)
  this_len = PAGE_CACHE_SIZE - offset;

 ret = pagecache_write_begin(file, mapping, sd->pos, this_len,
    AOP_FLAG_UNINTERRUPTIBLE, &page, &fsdata);
 if (unlikely(ret))
  goto out;

 if (buf->page != page) {



  char *src = buf->ops->map(pipe, buf, 1);
  char *dst = kmap_atomic(page, KM_USER1);

  memcpy(dst + offset, src + buf->offset, this_len);
  flush_dcache_page(page);
  kunmap_atomic(dst, KM_USER1);
  buf->ops->unmap(pipe, buf, src);
 }
 ret = pagecache_write_end(file, mapping, sd->pos, this_len, this_len,
    page, fsdata);
out:
 return ret;
}
