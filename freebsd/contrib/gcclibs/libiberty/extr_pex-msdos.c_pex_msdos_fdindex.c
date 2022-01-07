
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pex_msdos {int ** files; } ;


 scalar_t__ PEX_MSDOS_FD_OFFSET ;
 int PEX_MSDOS_FILE_COUNT ;
 int abort () ;

__attribute__((used)) static int
pex_msdos_fdindex (struct pex_msdos *ms, int fd)
{
  fd -= PEX_MSDOS_FD_OFFSET;
  if (fd < 0 || fd >= PEX_MSDOS_FILE_COUNT || ms->files[fd] == ((void*)0))
    abort ();
  return fd;
}
