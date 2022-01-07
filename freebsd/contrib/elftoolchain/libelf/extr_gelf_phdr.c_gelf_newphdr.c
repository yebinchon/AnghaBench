
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int e_class; } ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;
 int LIBELF_SET_ERROR (int ,int ) ;
 void* _libelf_newphdr (TYPE_1__*,int ,size_t) ;

void *
gelf_newphdr(Elf *e, size_t count)
{
 if (e == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));
 }
 return (_libelf_newphdr(e, e->e_class, count));
}
