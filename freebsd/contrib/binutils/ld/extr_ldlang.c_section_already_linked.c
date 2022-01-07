
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ just_syms_flag; } ;
typedef TYPE_1__ lang_input_statement_type ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ bfd ;
typedef int asection ;


 int DYNAMIC ;
 int bfd_link_just_syms (TYPE_2__*,int *,int *) ;
 int bfd_section_already_linked (TYPE_2__*,int *,int *) ;
 int link_info ;

__attribute__((used)) static void
section_already_linked (bfd *abfd, asection *sec, void *data)
{
  lang_input_statement_type *entry = data;



  if (entry->just_syms_flag)
    {
      bfd_link_just_syms (abfd, sec, &link_info);
      return;
    }

  if (!(abfd->flags & DYNAMIC))
    bfd_section_already_linked (abfd, sec, &link_info);
}
