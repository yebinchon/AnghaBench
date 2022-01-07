
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int type; int * csymbols; int * symtail; int * symbols; int * tail; int * head; } ;
typedef TYPE_2__ tdata_type ;
typedef int bfd_boolean ;
struct TYPE_7__ {TYPE_2__* srec_data; } ;
struct TYPE_9__ {TYPE_1__ tdata; } ;
typedef TYPE_3__ bfd ;


 int FALSE ;
 int TRUE ;
 TYPE_2__* bfd_alloc (TYPE_3__*,int) ;
 int srec_init () ;

__attribute__((used)) static bfd_boolean
srec_mkobject (bfd *abfd)
{
  tdata_type *tdata;

  srec_init ();

  tdata = bfd_alloc (abfd, sizeof (tdata_type));
  if (tdata == ((void*)0))
    return FALSE;

  abfd->tdata.srec_data = tdata;
  tdata->type = 1;
  tdata->head = ((void*)0);
  tdata->tail = ((void*)0);
  tdata->symbols = ((void*)0);
  tdata->symtail = ((void*)0);
  tdata->csymbols = ((void*)0);

  return TRUE;
}
