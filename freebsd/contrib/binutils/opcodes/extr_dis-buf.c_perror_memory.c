
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int stream; int (* fprintf_func ) (int ,int ,char*) ;} ;
typedef int bfd_vma ;


 int EIO ;
 int _ (char*) ;
 int sprintf_vma (char*,int ) ;
 int stub1 (int ,int ,int) ;
 int stub2 (int ,int ,char*) ;

void
perror_memory (int status,
        bfd_vma memaddr,
        struct disassemble_info *info)
{
  if (status != EIO)

    info->fprintf_func (info->stream, _("Unknown error %d\n"), status);
  else
    {
      char buf[30];



      sprintf_vma (buf, memaddr);
      info->fprintf_func (info->stream,
     _("Address 0x%s is out of bounds.\n"), buf);
    }
}
