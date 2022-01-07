
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef union etree_union {int dummy; } etree_union ;
typedef int reloc_howto_type ;
struct TYPE_3__ {char const* name; scalar_t__ output_offset; int * output_section; scalar_t__ addend_value; union etree_union* addend_exp; int * section; int * howto; int reloc; } ;
typedef TYPE_1__ lang_reloc_statement_type ;
typedef int bfd_reloc_code_real_type ;
typedef int asection ;


 int lang_reloc_statement ;
 TYPE_1__* new_stat (int ,int ) ;
 int stat_ptr ;

void
lang_add_reloc (bfd_reloc_code_real_type reloc,
  reloc_howto_type *howto,
  asection *section,
  const char *name,
  union etree_union *addend)
{
  lang_reloc_statement_type *p = new_stat (lang_reloc_statement, stat_ptr);

  p->reloc = reloc;
  p->howto = howto;
  p->section = section;
  p->name = name;
  p->addend_exp = addend;

  p->addend_value = 0;
  p->output_section = ((void*)0);
  p->output_offset = 0;
}
