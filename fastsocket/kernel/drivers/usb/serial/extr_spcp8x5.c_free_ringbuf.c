
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ringbuf {struct ringbuf* buf_buf; } ;


 int kfree (struct ringbuf*) ;

__attribute__((used)) static inline void free_ringbuf(struct ringbuf *pb)
{
 if (pb != ((void*)0)) {
  kfree(pb->buf_buf);
  kfree(pb);
 }
}
