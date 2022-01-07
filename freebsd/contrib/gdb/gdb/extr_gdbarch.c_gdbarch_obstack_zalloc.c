
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int obstack; } ;


 int memset (void*,int ,long) ;
 void* obstack_alloc (int ,long) ;

void *
gdbarch_obstack_zalloc (struct gdbarch *arch, long size)
{
  void *data = obstack_alloc (arch->obstack, size);
  memset (data, 0, size);
  return data;
}
