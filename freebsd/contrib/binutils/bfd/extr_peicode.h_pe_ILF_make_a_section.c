
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct coff_section_tdata {int dummy; } ;
struct TYPE_15__ {scalar_t__ data; scalar_t__ sym_index; int abfd; TYPE_1__* bim; int sec_index; } ;
typedef TYPE_2__ pe_ILF_vars ;
typedef int flagword ;
typedef int bfd_size_type ;
typedef TYPE_3__* asection_ptr ;
struct TYPE_17__ {scalar_t__ i; } ;
struct TYPE_16__ {scalar_t__ contents; struct coff_section_tdata* used_by_bfd; scalar_t__ target_index; } ;
struct TYPE_14__ {scalar_t__ buffer; scalar_t__ size; } ;


 int BFD_ASSERT (int) ;
 int BSF_LOCAL ;
 int SEC_ALLOC ;
 int SEC_HAS_CONTENTS ;
 int SEC_IN_MEMORY ;
 int SEC_KEEP ;
 int SEC_LOAD ;
 TYPE_3__* bfd_make_section_old_way (int ,char const*) ;
 int bfd_set_section_alignment (int ,TYPE_3__*,int) ;
 int bfd_set_section_flags (int ,TYPE_3__*,int) ;
 int bfd_set_section_size (int ,TYPE_3__*,int ) ;
 TYPE_8__* coff_section_data (int ,TYPE_3__*) ;
 int pe_ILF_make_a_symbol (TYPE_2__*,char*,char const*,TYPE_3__*,int ) ;

__attribute__((used)) static asection_ptr
pe_ILF_make_a_section (pe_ILF_vars * vars,
         const char * name,
         unsigned int size,
         flagword extra_flags)
{
  asection_ptr sec;
  flagword flags;

  sec = bfd_make_section_old_way (vars->abfd, name);
  if (sec == ((void*)0))
    return ((void*)0);

  flags = SEC_HAS_CONTENTS | SEC_ALLOC | SEC_LOAD | SEC_KEEP | SEC_IN_MEMORY;

  bfd_set_section_flags (vars->abfd, sec, flags | extra_flags);

  (void) bfd_set_section_alignment (vars->abfd, sec, 2);


  BFD_ASSERT (vars->data + size < vars->bim->buffer + vars->bim->size);



  bfd_set_section_size (vars->abfd, sec, (bfd_size_type) size);
  sec->contents = vars->data;
  sec->target_index = vars->sec_index ++;


  vars->data += size;





  if (size & 1)
    vars->data --;


  sec->used_by_bfd = (struct coff_section_tdata *) vars->data;
  vars->data += sizeof (struct coff_section_tdata);

  BFD_ASSERT (vars->data <= vars->bim->buffer + vars->bim->size);


  pe_ILF_make_a_symbol (vars, "", name, sec, BSF_LOCAL);


  coff_section_data (vars->abfd, sec)->i = vars->sym_index - 1;

  return sec;
}
