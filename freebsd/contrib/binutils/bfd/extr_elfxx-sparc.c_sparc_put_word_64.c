
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_vma ;
typedef int bfd ;


 int bfd_put_64 (int *,int ,void*) ;

__attribute__((used)) static void
sparc_put_word_64 (bfd *bfd, bfd_vma val, void *ptr)
{
  bfd_put_64 (bfd, val, ptr);
}
