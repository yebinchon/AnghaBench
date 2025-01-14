
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int nr_pages; void* user_page; void** data_pages; } ;


 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 int kfree (struct ring_buffer*) ;
 struct ring_buffer* kzalloc (unsigned long,int ) ;
 void* perf_mmap_alloc_page (int) ;
 int ring_buffer_init (struct ring_buffer*,long,int) ;

struct ring_buffer *rb_alloc(int nr_pages, long watermark, int cpu, int flags)
{
 struct ring_buffer *rb;
 unsigned long size;
 int i;

 size = sizeof(struct ring_buffer);
 size += nr_pages * sizeof(void *);

 rb = kzalloc(size, GFP_KERNEL);
 if (!rb)
  goto fail;

 rb->user_page = perf_mmap_alloc_page(cpu);
 if (!rb->user_page)
  goto fail_user_page;

 for (i = 0; i < nr_pages; i++) {
  rb->data_pages[i] = perf_mmap_alloc_page(cpu);
  if (!rb->data_pages[i])
   goto fail_data_pages;
 }

 rb->nr_pages = nr_pages;

 ring_buffer_init(rb, watermark, flags);

 return rb;

fail_data_pages:
 for (i--; i >= 0; i--)
  free_page((unsigned long)rb->data_pages[i]);

 free_page((unsigned long)rb->user_page);

fail_user_page:
 kfree(rb);

fail:
 return ((void*)0);
}
