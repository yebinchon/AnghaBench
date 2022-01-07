
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {int reserved1; int reserved0; int offset; int id2; int num; int id1; } ;
struct TYPE_5__ {int reserved1; int reserved0; int offset; int id2; int num; int id1; } ;
typedef TYPE_1__ Elf32_compact_rel ;
typedef TYPE_2__ Elf32_External_compact_rel ;


 int H_PUT_32 (int *,int ,int ) ;

__attribute__((used)) static void
bfd_elf32_swap_compact_rel_out (bfd *abfd, const Elf32_compact_rel *in,
    Elf32_External_compact_rel *ex)
{
  H_PUT_32 (abfd, in->id1, ex->id1);
  H_PUT_32 (abfd, in->num, ex->num);
  H_PUT_32 (abfd, in->id2, ex->id2);
  H_PUT_32 (abfd, in->offset, ex->offset);
  H_PUT_32 (abfd, in->reserved0, ex->reserved0);
  H_PUT_32 (abfd, in->reserved1, ex->reserved1);
}
