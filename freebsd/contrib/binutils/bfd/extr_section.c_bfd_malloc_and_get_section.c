
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* sec_ptr ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd_boolean ;
typedef int bfd ;
struct TYPE_4__ {scalar_t__ rawsize; scalar_t__ size; } ;


 int FALSE ;
 int TRUE ;
 int bfd_get_section_contents (int *,TYPE_1__*,int *,int ,scalar_t__) ;
 int * bfd_malloc (scalar_t__) ;

bfd_boolean
bfd_malloc_and_get_section (bfd *abfd, sec_ptr sec, bfd_byte **buf)
{
  bfd_size_type sz = sec->rawsize ? sec->rawsize : sec->size;
  bfd_byte *p = ((void*)0);

  *buf = p;
  if (sz == 0)
    return TRUE;

  p = bfd_malloc (sec->rawsize > sec->size ? sec->rawsize : sec->size);
  if (p == ((void*)0))
    return FALSE;
  *buf = p;

  return bfd_get_section_contents (abfd, sec, p, 0, sz);
}
