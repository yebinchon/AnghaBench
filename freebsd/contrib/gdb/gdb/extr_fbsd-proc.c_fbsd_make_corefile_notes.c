
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int gregset_t ;
typedef int fpregset_t ;
typedef int fpregs ;
typedef int fakename ;
typedef int bfd ;
struct TYPE_3__ {int * e_ident; } ;
typedef TYPE_1__ Elf_Internal_Ehdr ;


 size_t EI_OSABI ;
 int ELFOSABI_FREEBSD ;
 TYPE_1__* elf_elfheader (int *) ;
 char* elfcore_write_prfpreg (int *,char*,int*,int *,int) ;
 char* elfcore_write_prpsinfo (int *,char*,int*,char*,char*) ;
 char* elfcore_write_prstatus (int *,char*,int*,int ,int ,int *) ;
 char* elfcore_write_thrmisc (int *,char*,int*,char*,int) ;
 int fill_fpregset (int *,int) ;
 int fill_gregset (int *,int) ;
 scalar_t__ get_exec_file (int ) ;
 scalar_t__ get_inferior_args () ;
 int inferior_ptid ;
 int make_cleanup (int ,char*) ;
 int ptid_get_pid (int ) ;
 char* reconcat (char*,char*,char*,scalar_t__,int *) ;
 int stop_signal ;
 char* strrchr (scalar_t__,char) ;
 int xfree ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
fbsd_make_corefile_notes (bfd *obfd, int *note_size)
{
  gregset_t gregs;
  fpregset_t fpregs;
  char *note_data = ((void*)0);
  Elf_Internal_Ehdr *i_ehdrp;
  char fakename;


  i_ehdrp = elf_elfheader (obfd);
  i_ehdrp->e_ident[EI_OSABI] = ELFOSABI_FREEBSD;

  fill_gregset (&gregs, -1);
  note_data = elfcore_write_prstatus (obfd, note_data, note_size,
          ptid_get_pid (inferior_ptid),
          stop_signal, &gregs);

  fill_fpregset (&fpregs, -1);
  note_data = elfcore_write_prfpreg (obfd, note_data, note_size,
         &fpregs, sizeof (fpregs));

  fakename = '\0';
  note_data = elfcore_write_thrmisc (obfd, note_data, note_size,
         &fakename, sizeof (fakename));

  if (get_exec_file (0))
    {
      char *fname = strrchr (get_exec_file (0), '/') + 1;
      char *psargs = xstrdup (fname);

      if (get_inferior_args ())
 psargs = reconcat (psargs, psargs, " ", get_inferior_args (), ((void*)0));

      note_data = elfcore_write_prpsinfo (obfd, note_data, note_size,
       fname, psargs);
    }

  make_cleanup (xfree, note_data);
  return note_data;
}
