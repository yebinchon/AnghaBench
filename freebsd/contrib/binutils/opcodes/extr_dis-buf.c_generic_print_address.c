
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disassemble_info {int stream; int (* fprintf_func ) (int ,char*,char*) ;} ;
typedef int bfd_vma ;


 int sprintf_vma (char*,int ) ;
 int stub1 (int ,char*,char*) ;

void
generic_print_address (bfd_vma addr, struct disassemble_info *info)
{
  char buf[30];

  sprintf_vma (buf, addr);
  (*info->fprintf_func) (info->stream, "0x%s", buf);
}
