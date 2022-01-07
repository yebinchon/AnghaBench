
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inbuf {int ptr; int base; scalar_t__ limit; } ;


 int ALIGN (int,int) ;
 int die (char*) ;

__attribute__((used)) static void flat_realign(struct inbuf *inb, int align)
{
 int off = inb->ptr - inb->base;

 inb->ptr = inb->base + ALIGN(off, align);
 if (inb->ptr > inb->limit)
  die("Premature end of data parsing flat device tree\n");
}
