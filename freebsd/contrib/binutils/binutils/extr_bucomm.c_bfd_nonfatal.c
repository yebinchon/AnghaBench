
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int fprintf (int ,char*,char*,char const*,...) ;
 char* program_name ;
 int stderr ;

void
bfd_nonfatal (const char *string)
{
  const char *errmsg = bfd_errmsg (bfd_get_error ());

  if (string)
    fprintf (stderr, "%s: %s: %s\n", program_name, string, errmsg);
  else
    fprintf (stderr, "%s: %s\n", program_name, errmsg);
}
