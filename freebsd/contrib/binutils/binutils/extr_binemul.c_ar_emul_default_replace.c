
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_5__ {struct TYPE_5__* archive_next; } ;
typedef TYPE_1__ bfd ;


 int AR_EMUL_ELEMENT_CHECK (TYPE_1__*,char*) ;
 int AR_EMUL_REPLACE_PRINT_VERBOSE (int ,char*) ;
 int TRUE ;
 TYPE_1__* bfd_openr (char*,int *) ;

bfd_boolean
ar_emul_default_replace (bfd **after_bfd, char *file_name,
    bfd_boolean verbose)
{
  bfd *temp;

  temp = *after_bfd;
  *after_bfd = bfd_openr (file_name, ((void*)0));

  AR_EMUL_ELEMENT_CHECK (*after_bfd, file_name);
  AR_EMUL_REPLACE_PRINT_VERBOSE (verbose, file_name);

  (*after_bfd)->archive_next = temp;

  return TRUE;
}
