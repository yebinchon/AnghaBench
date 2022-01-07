
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int abort () ;
 int alias ;
 int mri_add_to_list (int *,char const*,int ,char const*,int ,int ) ;
 int sprintf (char*,char*,int) ;
 char* xstrdup (char*) ;

void
mri_alias (const char *want, const char *is, int isn)
{
  if (!is)
    {
      char buf[20];


      sprintf (buf, "%d", isn);

      is = xstrdup (buf);

      if (is == ((void*)0))
 abort ();
    }

  mri_add_to_list (&alias, is, 0, want, 0, 0);
}
