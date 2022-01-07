
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_size; } ;
struct TYPE_4__ {int direction; int * iostream; void* opened_once; int filename; void* cacheable; } ;
typedef TYPE_1__ bfd ;
typedef void* PTR ;
typedef int FILE ;


 scalar_t__ BFD_CACHE_MAX_OPEN ;
 int FOPEN_RB ;
 int FOPEN_RUB ;
 int FOPEN_WUB ;
 void* TRUE ;
 int bfd_cache_init (TYPE_1__*) ;
 int bfd_error_system_call ;
 int bfd_set_error (int ) ;

 int close_one () ;

 scalar_t__ open_files ;

 int real_fopen (int ,int ) ;
 int stat (int ,struct stat*) ;
 int unlink_if_ordinary (int ) ;


FILE *
bfd_open_file (bfd *abfd)
{
  abfd->cacheable = TRUE;

  if (open_files >= BFD_CACHE_MAX_OPEN)
    {
      if (! close_one ())
 return ((void*)0);
    }

  switch (abfd->direction)
    {
    case 129:
    case 130:
      abfd->iostream = (PTR) real_fopen (abfd->filename, FOPEN_RB);
      break;
    case 131:
    case 128:
      if (abfd->opened_once)
 {
   abfd->iostream = (PTR) real_fopen (abfd->filename, FOPEN_RUB);
   if (abfd->iostream == ((void*)0))
     abfd->iostream = (PTR) real_fopen (abfd->filename, FOPEN_WUB);
 }
      else
 {
   struct stat s;

   if (stat (abfd->filename, &s) == 0 && s.st_size != 0)
     unlink_if_ordinary (abfd->filename);

   abfd->iostream = (PTR) real_fopen (abfd->filename, FOPEN_WUB);
   abfd->opened_once = TRUE;
 }
      break;
    }

  if (abfd->iostream == ((void*)0))
    bfd_set_error (bfd_error_system_call);
  else
    {
      if (! bfd_cache_init (abfd))
 return ((void*)0);
    }

  return (FILE *) abfd->iostream;
}
