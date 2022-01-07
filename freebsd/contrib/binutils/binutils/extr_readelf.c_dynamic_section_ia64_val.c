
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int d_ptr; } ;
struct TYPE_5__ {int d_tag; TYPE_1__ d_un; } ;
typedef TYPE_2__ Elf_Internal_Dyn ;



 int PREFIX_HEX ;
 int print_vma (int ,int ) ;
 int printf (char*) ;
 int putchar (char) ;

__attribute__((used)) static void
dynamic_section_ia64_val (Elf_Internal_Dyn *entry)
{
  switch (entry->d_tag)
    {
    case 128:

      print_vma (entry->d_un.d_ptr, PREFIX_HEX);
      printf (" -- ");
      print_vma (entry->d_un.d_ptr + (3 * 8), PREFIX_HEX);
      break;

    default:
      print_vma (entry->d_un.d_ptr, PREFIX_HEX);
      break;
    }
  putchar ('\n');
}
