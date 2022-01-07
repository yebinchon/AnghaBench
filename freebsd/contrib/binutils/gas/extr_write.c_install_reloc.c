
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fr_address; int fr_literal; } ;
typedef TYPE_1__ fragS ;
typedef int bfd_reloc_status_type ;
typedef int asection ;
typedef int arelent ;


 int _ (char*) ;
 int as_bad_where (char*,unsigned int,int ) ;
 int as_fatal (int ,char*,unsigned int,int) ;
 int bfd_install_relocation (int ,int *,int ,int ,int *,char**) ;



 int stdoutput ;

__attribute__((used)) static void
install_reloc (asection *sec, arelent *reloc, fragS *fragp,
        char *file, unsigned int line)
{
  char *err;
  bfd_reloc_status_type s;

  s = bfd_install_relocation (stdoutput, reloc,
         fragp->fr_literal, fragp->fr_address,
         sec, &err);
  switch (s)
    {
    case 130:
      break;
    case 128:
      as_bad_where (file, line, _("relocation overflow"));
      break;
    case 129:
      as_bad_where (file, line, _("relocation out of range"));
      break;
    default:
      as_fatal (_("%s:%u: bad return from bfd_install_relocation: %x"),
  file, line, s);
    }
}
