
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objdump_disasm_info {int abfd; } ;
struct disassemble_info {int stream; int (* fprintf_func ) (int ,char*,char*) ;scalar_t__ application_data; } ;
typedef int bfd_vma ;
typedef int bfd_boolean ;


 int bfd_sprintf_vma (int ,char*,int ) ;
 int stub1 (int ,char*,char*) ;

__attribute__((used)) static void
objdump_print_value (bfd_vma vma, struct disassemble_info *info,
       bfd_boolean skip_zeroes)
{
  char buf[30];
  char *p;
  struct objdump_disasm_info *aux;

  aux = (struct objdump_disasm_info *) info->application_data;
  bfd_sprintf_vma (aux->abfd, buf, vma);
  if (! skip_zeroes)
    p = buf;
  else
    {
      for (p = buf; *p == '0'; ++p)
 ;
      if (*p == '\0')
 --p;
    }
  (*info->fprintf_func) (info->stream, "%s", p);
}
