
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_6__ {scalar_t__ xvec; char const* filename; } ;
typedef TYPE_1__ bfd ;
struct TYPE_7__ {char* core_program; } ;


 int FALSE ;
 int TRUE ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 TYPE_2__* elf_tdata (TYPE_1__*) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strrchr (char const*,char) ;

bfd_boolean
elf_core_file_matches_executable_p (bfd *core_bfd, bfd *exec_bfd)
{
  char* corename;



  if (core_bfd->xvec != exec_bfd->xvec)
    {
      bfd_set_error (bfd_error_system_call);
      return FALSE;
    }


  corename = elf_tdata (core_bfd)->core_program;
  if (corename != ((void*)0))
    {
      const char* execname = strrchr (exec_bfd->filename, '/');

      execname = execname ? execname + 1 : exec_bfd->filename;

      if (strcmp (execname, corename) != 0)
 return FALSE;
    }

  return TRUE;
}
