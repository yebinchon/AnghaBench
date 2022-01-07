
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* BFD_VERSION_STRING ;
 char* TARGET_ALIAS ;
 char* VERSION ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*,char*,char*) ;
 int stderr ;

void
print_version_id (void)
{
  static int printed;

  if (printed)
    return;
  printed = 1;

  fprintf (stderr, _("GNU assembler version %s (%s) using BFD version %s\n"),
    VERSION, TARGET_ALIAS, BFD_VERSION_STRING);
}
