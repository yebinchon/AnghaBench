
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_5__ {TYPE_1__* e_parent; scalar_t__ e_rawfile; } ;
struct TYPE_4__ {scalar_t__ e_rawfile; } ;
typedef TYPE_2__ Elf ;


 int ARGUMENT ;
 int LIBELF_SET_ERROR (int ,int ) ;

off_t
elf_getbase(Elf *e)
{
 if (e == ((void*)0)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return ((off_t) -1);
 }

 if (e->e_parent == ((void*)0))
  return ((off_t) 0);

 return ((off_t) ((uintptr_t) e->e_rawfile -
     (uintptr_t) e->e_parent->e_rawfile));
}
