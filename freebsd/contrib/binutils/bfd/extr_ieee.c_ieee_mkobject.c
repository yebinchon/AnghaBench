
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ieee_data_type ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_5__ {int * ieee_data; } ;
struct TYPE_6__ {TYPE_1__ tdata; } ;
typedef TYPE_2__ bfd ;


 int * bfd_zalloc (TYPE_2__*,int) ;
 int * input_bfd ;
 int * input_ptr ;
 int * input_ptr_end ;
 int * input_ptr_start ;
 int * output_bfd ;
 scalar_t__ output_buffer ;
 int * output_ptr ;
 int * output_ptr_end ;
 int * output_ptr_start ;

__attribute__((used)) static bfd_boolean
ieee_mkobject (bfd *abfd)
{
  bfd_size_type amt;

  output_ptr_start = ((void*)0);
  output_ptr = ((void*)0);
  output_ptr_end = ((void*)0);
  input_ptr_start = ((void*)0);
  input_ptr = ((void*)0);
  input_ptr_end = ((void*)0);
  input_bfd = ((void*)0);
  output_bfd = ((void*)0);
  output_buffer = 0;
  amt = sizeof (ieee_data_type);
  abfd->tdata.ieee_data = bfd_zalloc (abfd, amt);
  return abfd->tdata.ieee_data != ((void*)0);
}
