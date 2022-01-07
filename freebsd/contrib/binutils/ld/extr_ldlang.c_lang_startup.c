
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* filename; char const* local_sym_name; int real; } ;


 int TRUE ;
 int _ (char*) ;
 int einfo (int ) ;
 TYPE_1__* first_file ;
 char const* startup_file ;

void
lang_startup (const char *name)
{
  if (startup_file != ((void*)0))
    {
      einfo (_("%P%F: multiple STARTUP files\n"));
    }
  first_file->filename = name;
  first_file->local_sym_name = name;
  first_file->real = TRUE;

  startup_file = name;
}
