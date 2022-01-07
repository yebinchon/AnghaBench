
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* bfd_size_type ;


 int bfd_bread (void*,void*,int ) ;
 int input_bfd ;
 void* input_ptr ;
 void* input_ptr_end ;
 void* input_ptr_start ;

__attribute__((used)) static void
fill (void)
{
  bfd_size_type amt = input_ptr_end - input_ptr_start;


  bfd_bread ((void *) input_ptr_start, amt, input_bfd);
  input_ptr = input_ptr_start;
}
