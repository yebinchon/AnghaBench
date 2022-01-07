
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_size_type ;


 int abort () ;
 scalar_t__ bfd_bwrite (void*,scalar_t__,int ) ;
 int output_bfd ;
 int output_buffer ;
 scalar_t__ output_ptr ;
 scalar_t__ output_ptr_start ;

__attribute__((used)) static void
flush (void)
{
  bfd_size_type amt = output_ptr - output_ptr_start;

  if (bfd_bwrite ((void *) (output_ptr_start), amt, output_bfd) != amt)
    abort ();
  output_ptr = output_ptr_start;
  output_buffer++;
}
