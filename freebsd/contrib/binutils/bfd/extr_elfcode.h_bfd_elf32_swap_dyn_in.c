
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_7__ {int d_val; } ;
struct TYPE_9__ {TYPE_2__ d_un; int d_tag; } ;
struct TYPE_6__ {void* d_val; } ;
struct TYPE_8__ {TYPE_1__ d_un; void* d_tag; } ;
typedef TYPE_3__ Elf_Internal_Dyn ;
typedef TYPE_4__ Elf_External_Dyn ;


 void* H_GET_WORD (int *,int ) ;

void
elf_swap_dyn_in (bfd *abfd,
   const void *p,
   Elf_Internal_Dyn *dst)
{
  const Elf_External_Dyn *src = p;

  dst->d_tag = H_GET_WORD (abfd, src->d_tag);
  dst->d_un.d_val = H_GET_WORD (abfd, src->d_un.d_val);
}
