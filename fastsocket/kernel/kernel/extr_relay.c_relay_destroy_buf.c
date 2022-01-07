
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {unsigned int page_count; size_t cpu; struct rchan_buf* padding; int * page_array; int start; struct rchan* chan; } ;
struct rchan {int kref; int ** buf; } ;


 int __free_page (int ) ;
 int kfree (struct rchan_buf*) ;
 int kref_put (int *,int ) ;
 scalar_t__ likely (int ) ;
 int relay_destroy_channel ;
 int relay_free_page_array (int *) ;
 int vunmap (int ) ;

__attribute__((used)) static void relay_destroy_buf(struct rchan_buf *buf)
{
 struct rchan *chan = buf->chan;
 unsigned int i;

 if (likely(buf->start)) {
  vunmap(buf->start);
  for (i = 0; i < buf->page_count; i++)
   __free_page(buf->page_array[i]);
  relay_free_page_array(buf->page_array);
 }
 chan->buf[buf->cpu] = ((void*)0);
 kfree(buf->padding);
 kfree(buf);
 kref_put(&chan->kref, relay_destroy_channel);
}
