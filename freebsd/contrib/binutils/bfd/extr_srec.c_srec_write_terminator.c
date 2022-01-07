
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ type; } ;
typedef TYPE_1__ tdata_type ;
typedef int bfd_boolean ;
struct TYPE_7__ {int start_address; } ;
typedef TYPE_2__ bfd ;


 int srec_write_record (TYPE_2__*,scalar_t__,int ,int *,int *) ;

__attribute__((used)) static bfd_boolean
srec_write_terminator (bfd *abfd, tdata_type *tdata)
{
  return srec_write_record (abfd, 10 - tdata->type,
       abfd->start_address, ((void*)0), ((void*)0));
}
