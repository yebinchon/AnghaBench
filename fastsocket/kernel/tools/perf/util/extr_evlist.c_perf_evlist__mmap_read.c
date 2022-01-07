
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t size; } ;
union perf_event {TYPE_1__ header; } ;
struct perf_mmap {unsigned int prev; unsigned char* base; int mask; } ;
struct perf_evlist {scalar_t__ overwrite; union perf_event event_copy; struct perf_mmap* mmap; } ;


 int fprintf (int ,char*) ;
 int memcpy (void*,unsigned char*,unsigned int) ;
 unsigned int min (int,unsigned int) ;
 int page_size ;
 unsigned int perf_mmap__read_head (struct perf_mmap*) ;
 int perf_mmap__write_tail (struct perf_mmap*,unsigned int) ;
 int stderr ;

union perf_event *perf_evlist__mmap_read(struct perf_evlist *evlist, int idx)
{
 struct perf_mmap *md = &evlist->mmap[idx];
 unsigned int head = perf_mmap__read_head(md);
 unsigned int old = md->prev;
 unsigned char *data = md->base + page_size;
 union perf_event *event = ((void*)0);

 if (evlist->overwrite) {
  int diff = head - old;
  if (diff > md->mask / 2 || diff < 0) {
   fprintf(stderr, "WARNING: failed to keep up with mmap data.\n");




   old = head;
  }
 }

 if (old != head) {
  size_t size;

  event = (union perf_event *)&data[old & md->mask];
  size = event->header.size;





  if ((old & md->mask) + size != ((old + size) & md->mask)) {
   unsigned int offset = old;
   unsigned int len = min(sizeof(*event), size), cpy;
   void *dst = &evlist->event_copy;

   do {
    cpy = min(md->mask + 1 - (offset & md->mask), len);
    memcpy(dst, &data[offset & md->mask], cpy);
    offset += cpy;
    dst += cpy;
    len -= cpy;
   } while (len);

   event = &evlist->event_copy;
  }

  old += size;
 }

 md->prev = old;

 if (!evlist->overwrite)
  perf_mmap__write_tail(md, old);

 return event;
}
