
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* ELF64_TARGET_FORMAT ;
 char const* ELF_TARGET_FORMAT ;
 int abort () ;
 scalar_t__ default_arch_type ;
 int default_init_p ;
 int init_default_arch () ;
 scalar_t__ sparc86x ;
 int sparc_arch_size ;
 scalar_t__ target_big_endian ;
 scalar_t__ target_little_endian_data ;

const char *
sparc_target_format ()
{


  if (! default_init_p)
    init_default_arch ();
  abort ();
}
