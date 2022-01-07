
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct internal_exec {int a_info; } ;
struct external_exec {int e_info; } ;
typedef int bfd_target ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd ;


 scalar_t__ EXEC_BYTES_SIZE ;
 int H_GET_32 (int *,int ) ;
 scalar_t__ N_BADMAG (struct internal_exec) ;
 int const* aout_32_some_aout_object_p (int *,struct internal_exec*,int ) ;
 int b_out_callback ;
 scalar_t__ bfd_bread (void*,scalar_t__,int *) ;
 scalar_t__ bfd_error_system_call ;
 int bfd_error_wrong_format ;
 scalar_t__ bfd_get_error () ;
 int bfd_set_error (int ) ;
 int bout_swap_exec_header_in (int *,struct external_exec*,struct internal_exec*) ;

__attribute__((used)) static const bfd_target *
b_out_object_p (bfd *abfd)
{
  struct internal_exec anexec;
  struct external_exec exec_bytes;
  bfd_size_type amt = EXEC_BYTES_SIZE;

  if (bfd_bread ((void *) &exec_bytes, amt, abfd) != amt)
    {
      if (bfd_get_error () != bfd_error_system_call)
 bfd_set_error (bfd_error_wrong_format);
      return 0;
    }

  anexec.a_info = H_GET_32 (abfd, exec_bytes.e_info);

  if (N_BADMAG (anexec))
    {
      bfd_set_error (bfd_error_wrong_format);
      return 0;
    }

  bout_swap_exec_header_in (abfd, &exec_bytes, &anexec);
  return aout_32_some_aout_object_p (abfd, &anexec, b_out_callback);
}
