
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int fprintf (int ,char*,char const*,...) ;
 int stderr ;

void
bfd_perror (const char *message)
{
  if (message == ((void*)0) || *message == '\0')
    fprintf (stderr, "%s\n", bfd_errmsg (bfd_get_error ()));
  else
    fprintf (stderr, "%s: %s\n", message, bfd_errmsg (bfd_get_error ()));
}
