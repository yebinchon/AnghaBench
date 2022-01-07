
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_3__ {int namedata; } ;
typedef TYPE_1__ Elf_Internal_Note ;


 int FALSE ;
 int TRUE ;
 int atoi (char*) ;
 char* strchr (int ,char) ;

__attribute__((used)) static bfd_boolean
elfcore_netbsd_get_lwpid (Elf_Internal_Note *note, int *lwpidp)
{
  char *cp;

  cp = strchr (note->namedata, '@');
  if (cp != ((void*)0))
    {
      *lwpidp = atoi(cp + 1);
      return TRUE;
    }
  return FALSE;
}
