
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_2__ {int flags; } ;
typedef int FILE ;


 scalar_t__ APCS_26_FLAG (int *) ;
 scalar_t__ APCS_FLOAT_FLAG (int *) ;
 scalar_t__ APCS_SET (int *) ;
 int BFD_ASSERT (int) ;
 scalar_t__ INTERWORK_FLAG (int *) ;
 int INTERWORK_SET (int *) ;
 scalar_t__ PIC_FLAG (int *) ;
 int TRUE ;
 char* _ (char*) ;
 TYPE_1__* coff_data (int *) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;

__attribute__((used)) static bfd_boolean
coff_arm_print_private_bfd_data (bfd * abfd, void * ptr)
{
  FILE * file = (FILE *) ptr;

  BFD_ASSERT (abfd != ((void*)0) && ptr != ((void*)0));


  fprintf (file, _("private flags = %x:"), coff_data (abfd)->flags);

  if (APCS_SET (abfd))
    {

      fprintf (file, " [APCS-%d]", APCS_26_FLAG (abfd) ? 26 : 32);

      if (APCS_FLOAT_FLAG (abfd))
 fprintf (file, _(" [floats passed in float registers]"));
      else
 fprintf (file, _(" [floats passed in integer registers]"));

      if (PIC_FLAG (abfd))
 fprintf (file, _(" [position independent]"));
      else
 fprintf (file, _(" [absolute position]"));
    }

  if (! INTERWORK_SET (abfd))
    fprintf (file, _(" [interworking flag not initialised]"));
  else if (INTERWORK_FLAG (abfd))
    fprintf (file, _(" [interworking supported]"));
  else
    fprintf (file, _(" [interworking not supported]"));

  fputc ('\n', file);

  return TRUE;
}
