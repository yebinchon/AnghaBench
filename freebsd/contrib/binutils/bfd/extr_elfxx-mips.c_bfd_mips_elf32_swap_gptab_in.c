
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_8__ {int gt_bytes; int gt_g_value; } ;
struct TYPE_10__ {TYPE_2__ gt_entry; } ;
struct TYPE_7__ {void* gt_bytes; void* gt_g_value; } ;
struct TYPE_9__ {TYPE_1__ gt_entry; } ;
typedef TYPE_3__ Elf32_gptab ;
typedef TYPE_4__ Elf32_External_gptab ;


 void* H_GET_32 (int *,int ) ;

__attribute__((used)) static void
bfd_mips_elf32_swap_gptab_in (bfd *abfd, const Elf32_External_gptab *ex,
         Elf32_gptab *in)
{
  in->gt_entry.gt_g_value = H_GET_32 (abfd, ex->gt_entry.gt_g_value);
  in->gt_entry.gt_bytes = H_GET_32 (abfd, ex->gt_entry.gt_bytes);
}
