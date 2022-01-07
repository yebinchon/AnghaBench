
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_18__ {int l_symndx; } ;
struct internal_lineno {TYPE_2__ l_addr; scalar_t__ l_lnno; } ;
typedef int out ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_20__ {TYPE_5__** outsymbols; TYPE_6__* sections; } ;
typedef TYPE_4__ bfd ;
struct TYPE_21__ {TYPE_1__* section; } ;
typedef TYPE_5__ asymbol ;
struct TYPE_22__ {int line_filepos; scalar_t__ lineno_count; struct TYPE_22__* next; } ;
typedef TYPE_6__ asection ;
struct TYPE_19__ {int offset; } ;
struct TYPE_23__ {TYPE_3__ u; scalar_t__ line_number; } ;
typedef TYPE_7__ alent ;
struct TYPE_17__ {TYPE_6__* output_section; } ;


 TYPE_7__* BFD_SEND (int ,int ,int ) ;
 int FALSE ;
 int SEEK_SET ;
 int TRUE ;
 int _get_lineno ;
 void* bfd_alloc (TYPE_4__*,scalar_t__) ;
 int bfd_asymbol_bfd (TYPE_5__*) ;
 scalar_t__ bfd_bwrite (void*,scalar_t__,TYPE_4__*) ;
 scalar_t__ bfd_coff_linesz (TYPE_4__*) ;
 int bfd_coff_swap_lineno_out (TYPE_4__*,struct internal_lineno*,void*) ;
 int bfd_release (TYPE_4__*,void*) ;
 scalar_t__ bfd_seek (TYPE_4__*,int ,int ) ;
 int memset (void*,int ,int) ;

bfd_boolean
coff_write_linenumbers (bfd *abfd)
{
  asection *s;
  bfd_size_type linesz;
  void * buff;

  linesz = bfd_coff_linesz (abfd);
  buff = bfd_alloc (abfd, linesz);
  if (!buff)
    return FALSE;
  for (s = abfd->sections; s != (asection *) ((void*)0); s = s->next)
    {
      if (s->lineno_count)
 {
   asymbol **q = abfd->outsymbols;
   if (bfd_seek (abfd, s->line_filepos, SEEK_SET) != 0)
     return FALSE;

   while (*q)
     {
       asymbol *p = *q;
       if (p->section->output_section == s)
  {
    alent *l =
    BFD_SEND (bfd_asymbol_bfd (p), _get_lineno,
       (bfd_asymbol_bfd (p), p));
    if (l)
      {

        struct internal_lineno out;
        memset ((void *) & out, 0, sizeof (out));
        out.l_lnno = 0;
        out.l_addr.l_symndx = l->u.offset;
        bfd_coff_swap_lineno_out (abfd, &out, buff);
        if (bfd_bwrite (buff, (bfd_size_type) linesz, abfd)
     != linesz)
   return FALSE;
        l++;
        while (l->line_number)
   {
     out.l_lnno = l->line_number;
     out.l_addr.l_symndx = l->u.offset;
     bfd_coff_swap_lineno_out (abfd, &out, buff);
     if (bfd_bwrite (buff, (bfd_size_type) linesz, abfd)
         != linesz)
       return FALSE;
     l++;
   }
      }
  }
       q++;
     }
 }
    }
  bfd_release (abfd, buff);
  return TRUE;
}
