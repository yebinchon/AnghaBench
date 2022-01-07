
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int bfd_close (scalar_t__) ;
 int bfd_get_filename (scalar_t__) ;
 int fprintf (int ,char*,char*) ;
 int free (char*) ;
 int maybequit () ;
 scalar_t__ obfd ;
 char* program_name ;
 int real_name ;
 int smart_rename (char*,int ,int ) ;
 int stderr ;
 char* xstrdup (int ) ;

void
ar_save (void)
{
  if (!obfd)
    {
      fprintf (stderr, _("%s: no open output archive\n"), program_name);
      maybequit ();
    }
  else
    {
      char *ofilename = xstrdup (bfd_get_filename (obfd));

      bfd_close (obfd);

      smart_rename (ofilename, real_name, 0);
      obfd = 0;
      free (ofilename);
    }
}
