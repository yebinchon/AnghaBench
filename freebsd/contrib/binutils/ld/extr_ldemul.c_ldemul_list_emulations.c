
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* emulation_name; } ;
typedef TYPE_1__ ld_emulation_xfer_type ;
typedef scalar_t__ bfd_boolean ;
typedef int FILE ;


 scalar_t__ FALSE ;
 scalar_t__ TRUE ;
 int fprintf (int *,char*,...) ;
 TYPE_1__** ld_emulations ;

void
ldemul_list_emulations (FILE *f)
{
  ld_emulation_xfer_type **eptr = ld_emulations;
  bfd_boolean first = TRUE;

  for (; *eptr; eptr++)
    {
      if (first)
 first = FALSE;
      else
 fprintf (f, " ");
      fprintf (f, "%s", (*eptr)->emulation_name);
    }
}
