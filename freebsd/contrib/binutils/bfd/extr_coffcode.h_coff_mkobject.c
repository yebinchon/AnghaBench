
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ local_toc_sym_map; scalar_t__ relocbase; int * raw_syments; int * conversion_table; int * symbols; } ;
typedef TYPE_2__ coff_data_type ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_8__ {int * coff_obj_data; } ;
struct TYPE_10__ {TYPE_1__ tdata; } ;
typedef TYPE_3__ bfd ;


 int FALSE ;
 int TRUE ;
 int * bfd_zalloc (TYPE_3__*,int) ;
 TYPE_2__* coff_data (TYPE_3__*) ;

__attribute__((used)) static bfd_boolean
coff_mkobject (bfd * abfd)
{
  coff_data_type *coff;
  bfd_size_type amt = sizeof (coff_data_type);

  abfd->tdata.coff_obj_data = bfd_zalloc (abfd, amt);
  if (abfd->tdata.coff_obj_data == ((void*)0))
    return FALSE;
  coff = coff_data (abfd);
  coff->symbols = ((void*)0);
  coff->conversion_table = ((void*)0);
  coff->raw_syments = ((void*)0);
  coff->relocbase = 0;
  coff->local_toc_sym_map = 0;



  return TRUE;
}
