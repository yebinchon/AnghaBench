
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf {unsigned int buf_size; unsigned int buf_put; unsigned int buf_get; } ;



__attribute__((used)) static inline unsigned int ringbuf_avail_data(struct ringbuf *pb)
{
 if (pb == ((void*)0))
  return 0;
 return (pb->buf_size + pb->buf_put - pb->buf_get) % pb->buf_size;
}
