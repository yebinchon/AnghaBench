
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uio_mem {int addr; } ;
typedef int ssize_t ;


 int PAGE_MASK ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t map_offset_show(struct uio_mem *mem, char *buf)
{
 return sprintf(buf, "0x%lx\n", mem->addr & ~PAGE_MASK);
}
