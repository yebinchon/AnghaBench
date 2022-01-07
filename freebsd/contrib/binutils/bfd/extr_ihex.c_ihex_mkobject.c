
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ihex_data_struct {int * tail; int * head; } ;
typedef int bfd_boolean ;
struct TYPE_5__ {struct ihex_data_struct* ihex_data; } ;
struct TYPE_6__ {TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;


 int FALSE ;
 int TRUE ;
 struct ihex_data_struct* bfd_alloc (TYPE_2__*,int) ;

__attribute__((used)) static bfd_boolean
ihex_mkobject (bfd *abfd)
{
  struct ihex_data_struct *tdata;

  tdata = bfd_alloc (abfd, sizeof (* tdata));
  if (tdata == ((void*)0))
    return FALSE;

  abfd->tdata.ihex_data = tdata;
  tdata->head = ((void*)0);
  tdata->tail = ((void*)0);
  return TRUE;
}
