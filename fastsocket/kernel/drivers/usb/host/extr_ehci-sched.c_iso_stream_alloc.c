
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ehci_iso_stream {int next_uframe; int refcount; int free_list; int td_list; } ;
typedef int gfp_t ;


 int INIT_LIST_HEAD (int *) ;
 struct ehci_iso_stream* kzalloc (int,int ) ;
 scalar_t__ likely (int ) ;

__attribute__((used)) static struct ehci_iso_stream *
iso_stream_alloc (gfp_t mem_flags)
{
 struct ehci_iso_stream *stream;

 stream = kzalloc(sizeof *stream, mem_flags);
 if (likely (stream != ((void*)0))) {
  INIT_LIST_HEAD(&stream->td_list);
  INIT_LIST_HEAD(&stream->free_list);
  stream->next_uframe = -1;
  stream->refcount = 1;
 }
 return stream;
}
