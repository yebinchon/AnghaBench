
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;
typedef int uint32_t ;
struct inbuf {int ptr; int base; } ;


 int assert (int) ;
 int fdt32_to_cpu (int ) ;
 int flat_read_chunk (struct inbuf*,int *,int) ;

__attribute__((used)) static uint32_t flat_read_word(struct inbuf *inb)
{
 uint32_t val;

 assert(((inb->ptr - inb->base) % sizeof(val)) == 0);

 flat_read_chunk(inb, &val, sizeof(val));

 return fdt32_to_cpu(val);
}
