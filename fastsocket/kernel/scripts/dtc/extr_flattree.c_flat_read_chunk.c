
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf {scalar_t__ ptr; scalar_t__ limit; } ;


 int die (char*) ;
 int memcpy (void*,scalar_t__,int) ;

__attribute__((used)) static void flat_read_chunk(struct inbuf *inb, void *p, int len)
{
 if ((inb->ptr + len) > inb->limit)
  die("Premature end of data parsing flat device tree\n");

 memcpy(p, inb->ptr, len);

 inb->ptr += len;
}
