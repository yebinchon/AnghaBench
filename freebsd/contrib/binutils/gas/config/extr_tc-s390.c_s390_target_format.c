
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int init_default_arch () ;
 int s390_arch_size ;

const char *
s390_target_format ()
{


  init_default_arch ();

  return s390_arch_size == 64 ? "elf64-s390" : "elf32-s390";
}
