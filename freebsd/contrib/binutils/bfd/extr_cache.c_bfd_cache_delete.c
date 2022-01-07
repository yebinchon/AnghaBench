
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_boolean ;
struct TYPE_4__ {int * iostream; } ;
typedef TYPE_1__ bfd ;
typedef int FILE ;


 int FALSE ;
 int TRUE ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;
 scalar_t__ fclose (int *) ;
 int open_files ;
 int snip (TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
bfd_cache_delete (bfd *abfd)
{
  bfd_boolean ret;

  if (fclose ((FILE *) abfd->iostream) == 0)
    ret = TRUE;
  else
    {
      ret = FALSE;
      bfd_set_error (bfd_error_system_call);
    }

  snip (abfd);

  abfd->iostream = ((void*)0);
  --open_files;

  return ret;
}
