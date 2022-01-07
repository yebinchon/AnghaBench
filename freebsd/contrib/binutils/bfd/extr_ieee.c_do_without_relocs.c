
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_7__ {int flags; unsigned int size; } ;
typedef TYPE_1__ asection ;
struct TYPE_8__ {scalar_t__* data; } ;


 int FALSE ;
 int SEC_LOAD ;
 int TRUE ;
 int do_as_repeat (int *,TYPE_1__*) ;
 int do_with_relocs (int *,TYPE_1__*) ;
 TYPE_2__* ieee_per_section (TYPE_1__*) ;

__attribute__((used)) static bfd_boolean
do_without_relocs (bfd *abfd, asection *s)
{
  bfd_byte *stream = ieee_per_section (s)->data;

  if (stream == 0 || ((s->flags & SEC_LOAD) == 0))
    {
      if (! do_as_repeat (abfd, s))
 return FALSE;
    }
  else
    {
      unsigned int i;

      for (i = 0; i < s->size; i++)
 {
   if (stream[i] != 0)
     {
       if (! do_with_relocs (abfd, s))
  return FALSE;
       return TRUE;
     }
 }
      if (! do_as_repeat (abfd, s))
 return FALSE;
    }

  return TRUE;
}
