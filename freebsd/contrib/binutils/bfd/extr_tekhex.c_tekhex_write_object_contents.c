
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct data_struct {int * chunk_data; scalar_t__ vma; scalar_t__* chunk_init; struct data_struct* next; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_12__ {TYPE_1__* tekhex_data; } ;
struct TYPE_14__ {TYPE_5__** outsymbols; TYPE_6__* sections; TYPE_2__ tdata; } ;
typedef TYPE_4__ bfd ;
struct TYPE_15__ {TYPE_3__* section; scalar_t__ value; int name; } ;
typedef TYPE_5__ asymbol ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ vma; int name; struct TYPE_16__* next; } ;
typedef TYPE_6__ asection ;
struct TYPE_13__ {scalar_t__ vma; int name; } ;
struct TYPE_11__ {struct data_struct* data; } ;


 int CHUNK_MASK ;
 int FALSE ;
 int TOHEX (char*,int ) ;
 int TRUE ;
 int abort () ;
 int bfd_bwrite (char*,int ,TYPE_4__*) ;
 int bfd_decode_symclass (TYPE_5__*) ;
 int bfd_error_wrong_format ;
 int bfd_set_error (int ) ;
 int out (TYPE_4__*,char,char*,char*) ;
 int tekhex_init () ;
 int writesym (char**,int ) ;
 int writevalue (char**,scalar_t__) ;

__attribute__((used)) static bfd_boolean
tekhex_write_object_contents (bfd *abfd)
{
  char buffer[100];
  asymbol **p;
  asection *s;
  struct data_struct *d;

  tekhex_init ();


  for (d = abfd->tdata.tekhex_data->data;
       d != ((void*)0);
       d = d->next)
    {
      int low;

      const int span = 32;
      int addr;


      for (addr = 0; addr < CHUNK_MASK + 1; addr += span)
 {
   int need = 0;


   for (low = 0; !need && low < span; low++)
     if (d->chunk_init[addr + low])
       need = 1;

   if (need)
     {
       char *dst = buffer;

       writevalue (&dst, addr + d->vma);
       for (low = 0; low < span; low++)
  {
    TOHEX (dst, d->chunk_data[addr + low]);
    dst += 2;
  }
       out (abfd, '6', buffer, dst);
     }
 }
    }


  for (s = abfd->sections; s != ((void*)0); s = s->next)
    {
      char *dst = buffer;

      writesym (&dst, s->name);
      *dst++ = '1';
      writevalue (&dst, s->vma);
      writevalue (&dst, s->vma + s->size);
      out (abfd, '3', buffer, dst);
    }


  if (abfd->outsymbols)
    {
      for (p = abfd->outsymbols; *p; p++)
 {
   int section_code = bfd_decode_symclass (*p);

   if (section_code != '?')
     {

       asymbol *sym = *p;
       char *dst = buffer;

       writesym (&dst, sym->section->name);

       switch (section_code)
  {
  case 'A':
    *dst++ = '2';
    break;
  case 'a':
    *dst++ = '6';
    break;
  case 'D':
  case 'B':
  case 'O':
    *dst++ = '4';
    break;
  case 'd':
  case 'b':
  case 'o':
    *dst++ = '8';
    break;
  case 'T':
    *dst++ = '3';
    break;
  case 't':
    *dst++ = '7';
    break;
  case 'C':
  case 'U':
    bfd_set_error (bfd_error_wrong_format);
    return FALSE;
  }

       writesym (&dst, sym->name);
       writevalue (&dst, sym->value + sym->section->vma);
       out (abfd, '3', buffer, dst);
     }
 }
    }


  if (bfd_bwrite ("%0781010\n", (bfd_size_type) 9, abfd) != 9)
    abort ();
  return TRUE;
}
