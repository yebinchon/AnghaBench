
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct go7007_buffer {scalar_t__ state; int page_count; int * pages; int stream; } ;


 scalar_t__ BUF_STATE_IDLE ;
 int list_del (int *) ;
 int page_cache_release (int ) ;

__attribute__((used)) static void deactivate_buffer(struct go7007_buffer *gobuf)
{
 int i;

 if (gobuf->state != BUF_STATE_IDLE) {
  list_del(&gobuf->stream);
  gobuf->state = BUF_STATE_IDLE;
 }
 if (gobuf->page_count > 0) {
  for (i = 0; i < gobuf->page_count; ++i)
   page_cache_release(gobuf->pages[i]);
  gobuf->page_count = 0;
 }
}
