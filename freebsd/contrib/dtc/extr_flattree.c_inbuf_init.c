
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf {void* base; void* ptr; void* limit; } ;



__attribute__((used)) static void inbuf_init(struct inbuf *inb, void *base, void *limit)
{
 inb->base = base;
 inb->limit = limit;
 inb->ptr = inb->base;
}
