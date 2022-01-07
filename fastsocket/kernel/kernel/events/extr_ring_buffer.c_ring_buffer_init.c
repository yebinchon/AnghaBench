
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ring_buffer {long watermark; int writable; int event_lock; int event_list; int refcount; } ;


 int INIT_LIST_HEAD (int *) ;
 int RING_BUFFER_WRITABLE ;
 int atomic_set (int *,int) ;
 long min (long,long) ;
 long perf_data_size (struct ring_buffer*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void
ring_buffer_init(struct ring_buffer *rb, long watermark, int flags)
{
 long max_size = perf_data_size(rb);

 if (watermark)
  rb->watermark = min(max_size, watermark);

 if (!rb->watermark)
  rb->watermark = max_size / 2;

 if (flags & RING_BUFFER_WRITABLE)
  rb->writable = 1;

 atomic_set(&rb->refcount, 1);

 INIT_LIST_HEAD(&rb->event_list);
 spin_lock_init(&rb->event_lock);
}
