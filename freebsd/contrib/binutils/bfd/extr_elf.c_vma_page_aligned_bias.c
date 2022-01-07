
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufile_ptr ;
typedef int file_ptr ;
typedef int bfd_vma ;



__attribute__((used)) static file_ptr
vma_page_aligned_bias (bfd_vma vma, ufile_ptr off, bfd_vma maxpagesize)
{
  return ((vma - off) % maxpagesize);
}
