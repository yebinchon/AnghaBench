
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ e_cmd; int e_fd; scalar_t__ e_parent; } ;
typedef scalar_t__ Elf_Cmd ;
typedef TYPE_1__ Elf ;


 int ARCHIVE ;
 int ARGUMENT ;
 scalar_t__ ELF_C_FDDONE ;
 scalar_t__ ELF_C_FDREAD ;
 scalar_t__ ELF_C_WRITE ;
 int LIBELF_SET_ERROR (int ,int ) ;
 int MODE ;

int
elf_cntl(Elf *e, Elf_Cmd c)
{
 if (e == ((void*)0) ||
     (c != ELF_C_FDDONE && c != ELF_C_FDREAD)) {
  LIBELF_SET_ERROR(ARGUMENT, 0);
  return (-1);
 }

 if (e->e_parent) {
  LIBELF_SET_ERROR(ARCHIVE, 0);
  return (-1);
 }

 if (c == ELF_C_FDREAD) {
  if (e->e_cmd == ELF_C_WRITE) {
   LIBELF_SET_ERROR(MODE, 0);
   return (-1);
  }
  else
   return (0);
 }

 e->e_fd = -1;
 return 0;
}
