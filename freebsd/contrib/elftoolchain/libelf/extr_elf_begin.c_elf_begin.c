
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int e_fd; int e_cmd; scalar_t__ e_kind; int e_activations; } ;
typedef int Elf_Cmd ;
typedef TYPE_1__ Elf ;


 int ARGUMENT ;




 scalar_t__ ELF_K_AR ;
 scalar_t__ EV_NONE ;
 scalar_t__ LIBELF_PRIVATE (int ) ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int SEQUENCE ;
 TYPE_1__* _libelf_ar_open_member (int,int,TYPE_1__*) ;
 TYPE_1__* _libelf_open_object (int,int,int) ;
 int version ;

Elf *
elf_begin(int fd, Elf_Cmd c, Elf *a)
{
 Elf *e;

 e = ((void*)0);

 if (LIBELF_PRIVATE(version) == EV_NONE) {
  LIBELF_SET_ERROR(SEQUENCE, 0);
  return (((void*)0));
 }

 switch (c) {
 case 131:
  return (((void*)0));

 case 128:




  a = ((void*)0);
  break;

 case 130:
  if (a != ((void*)0)) {
   LIBELF_SET_ERROR(ARGUMENT, 0);
   return (((void*)0));
  }

 case 129:






  if (a &&
      ((a->e_fd != -1 && a->e_fd != fd) || c != a->e_cmd)) {
   LIBELF_SET_ERROR(ARGUMENT, 0);
   return (((void*)0));
  }
  break;

 default:
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (((void*)0));

 }

 if (a == ((void*)0))
  e = _libelf_open_object(fd, c, 1);
 else if (a->e_kind == ELF_K_AR)
  e = _libelf_ar_open_member(a->e_fd, c, a);
 else
  (e = a)->e_activations++;

 return (e);
}
