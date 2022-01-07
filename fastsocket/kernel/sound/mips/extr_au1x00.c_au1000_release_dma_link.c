
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct audio_stream {struct au1000_period* buffer; scalar_t__ periods; scalar_t__ period_size; } ;
struct au1000_period {struct au1000_period* next; } ;


 int kfree (struct au1000_period*) ;

__attribute__((used)) static void
au1000_release_dma_link(struct audio_stream *stream)
{
 struct au1000_period * pointer;
 struct au1000_period * pointer_next;

 stream->period_size = 0;
 stream->periods = 0;
 pointer = stream->buffer;
 if (! pointer)
  return;
 do {
  pointer_next = pointer->next;
  kfree(pointer);
  pointer = pointer_next;
 } while (pointer != stream->buffer);
 stream->buffer = ((void*)0);
}
