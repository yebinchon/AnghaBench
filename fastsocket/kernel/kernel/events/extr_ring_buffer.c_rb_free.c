
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {int nr_pages; scalar_t__* data_pages; scalar_t__ user_page; } ;


 int kfree (struct ring_buffer*) ;
 int perf_mmap_free_page (unsigned long) ;

void rb_free(struct ring_buffer *rb)
{
 int i;

 perf_mmap_free_page((unsigned long)rb->user_page);
 for (i = 0; i < rb->nr_pages; i++)
  perf_mmap_free_page((unsigned long)rb->data_pages[i]);
 kfree(rb);
}
