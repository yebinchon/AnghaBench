
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int addend_exp; TYPE_2__* section; int * name; TYPE_5__* howto; TYPE_1__* output_section; scalar_t__ output_offset; } ;
typedef TYPE_3__ lang_reloc_statement_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
struct TYPE_9__ {int name; } ;
struct TYPE_7__ {int * name; } ;
struct TYPE_6__ {scalar_t__ vma; } ;


 int SECTION_NAME_MAP_LENGTH ;
 scalar_t__ TO_ADDR (int ) ;
 int bfd_get_reloc_size (TYPE_5__*) ;
 int exp_print_tree (int ) ;
 int init_opb () ;
 int minfo (char*,int *,...) ;
 scalar_t__ print_dot ;
 int print_nl () ;
 int print_space () ;

__attribute__((used)) static void
print_reloc_statement (lang_reloc_statement_type *reloc)
{
  int i;
  bfd_vma addr;
  bfd_size_type size;

  init_opb ();
  for (i = 0; i < SECTION_NAME_MAP_LENGTH; i++)
    print_space ();

  addr = reloc->output_offset;
  if (reloc->output_section != ((void*)0))
    addr += reloc->output_section->vma;

  size = bfd_get_reloc_size (reloc->howto);

  minfo ("0x%V %W RELOC %s ", addr, size, reloc->howto->name);

  if (reloc->name != ((void*)0))
    minfo ("%s+", reloc->name);
  else
    minfo ("%s+", reloc->section->name);

  exp_print_tree (reloc->addend_exp);

  print_nl ();

  print_dot = addr + TO_ADDR (size);
}
