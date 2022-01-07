
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int einfo (int ,char const*) ;
 int lang_add_output_format (char*,int *,int *,int) ;
 scalar_t__ strcmp (char const*,char*) ;

void
mri_format (const char *name)
{
  if (strcmp (name, "S") == 0)
    lang_add_output_format ("srec", ((void*)0), ((void*)0), 1);

  else if (strcmp (name, "IEEE") == 0)
    lang_add_output_format ("ieee", ((void*)0), ((void*)0), 1);

  else if (strcmp (name, "COFF") == 0)
    lang_add_output_format ("coff-m68k", ((void*)0), ((void*)0), 1);

  else
    einfo (_("%P%F: unknown format type %s\n"), name);
}
