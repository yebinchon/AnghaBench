
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct pe_tdata {int dummy; } ;
struct TYPE_10__ {int pe; } ;
struct TYPE_11__ {int force_minimum_alignment; int target_subsystem; int in_reloc_p; TYPE_2__ coff; } ;
typedef TYPE_3__ pe_data_type ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_9__ {struct pe_tdata* pe_obj_data; } ;
struct TYPE_12__ {TYPE_1__ tdata; } ;
typedef TYPE_4__ bfd ;


 int FALSE ;
 int PEI_TARGET_SUBSYSTEM ;
 int TRUE ;
 scalar_t__ bfd_zalloc (TYPE_4__*,int) ;
 int in_reloc_p ;
 TYPE_3__* pe_data (TYPE_4__*) ;

__attribute__((used)) static bfd_boolean
pe_mkobject (bfd * abfd)
{
  pe_data_type *pe;
  bfd_size_type amt = sizeof (pe_data_type);

  abfd->tdata.pe_obj_data = (struct pe_tdata *) bfd_zalloc (abfd, amt);

  if (abfd->tdata.pe_obj_data == 0)
    return FALSE;

  pe = pe_data (abfd);

  pe->coff.pe = 1;


  pe->in_reloc_p = in_reloc_p;
  return TRUE;
}
