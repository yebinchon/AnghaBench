
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct debuginfo {int dummy; } ;
typedef int Dwarf_Addr ;


 scalar_t__ debuginfo__init_online_kernel_dwarf (struct debuginfo*,int ) ;
 int free (struct debuginfo*) ;
 struct debuginfo* zalloc (int) ;

struct debuginfo *debuginfo__new_online_kernel(unsigned long addr)
{
 struct debuginfo *self = zalloc(sizeof(struct debuginfo));
 if (!self)
  return ((void*)0);

 if (debuginfo__init_online_kernel_dwarf(self, (Dwarf_Addr)addr) < 0) {
  free(self);
  self = ((void*)0);
 }

 return self;
}
