
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _ovl_stream {int dummy; } ;
typedef int bfd_boolean ;
typedef int bfd ;


 int * bfd_openr_iovec (char*,char*,int ,void*,int ,int *,int *) ;
 int ovl_mgr_open ;
 int ovl_mgr_pread ;

bfd_boolean
spu_elf_open_builtin_lib (bfd **ovl_bfd, const struct _ovl_stream *stream)
{
  *ovl_bfd = bfd_openr_iovec ("builtin ovl_mgr",
         "elf32-spu",
         ovl_mgr_open,
         (void *) stream,
         ovl_mgr_pread,
         ((void*)0),
         ((void*)0));
  return *ovl_bfd != ((void*)0);
}
