
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {struct TYPE_6__* archive_next; } ;
typedef TYPE_1__ bfd ;
struct TYPE_7__ {TYPE_1__* archive_head; } ;


 char* _ (char*) ;
 int ar_directory_doer (TYPE_1__*,TYPE_1__*) ;
 char* bfd_get_filename (TYPE_2__*) ;
 int fprintf (int ,char*,char*) ;
 int maybequit () ;
 TYPE_2__* obfd ;
 int outfile ;
 int printf (char*,char*) ;
 char* program_name ;
 int stderr ;
 int stdout ;
 int verbose ;

void
ar_list (void)
{
  if (!obfd)
    {
      fprintf (stderr, _("%s: no open output archive\n"), program_name);
      maybequit ();
    }
  else
    {
      bfd *abfd;

      outfile = stdout;
      verbose =1 ;
      printf (_("Current open archive is %s\n"), bfd_get_filename (obfd));

      for (abfd = obfd->archive_head;
    abfd != (bfd *)((void*)0);
    abfd = abfd->archive_next)
 ar_directory_doer (abfd, (bfd *) ((void*)0));
    }
}
