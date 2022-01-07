
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct stab_section_info {int* cumulative_skips; int* stridxs; struct stab_excl_list* excls; } ;
struct stab_link_includes_totals {scalar_t__ sum_chars; scalar_t__ num_chars; struct stab_link_includes_totals* next; void* symb; } ;
struct stab_link_includes_entry {struct stab_link_includes_totals* totals; } ;
struct stab_info {int * strings; TYPE_4__* stabstr; int includes; } ;
struct stab_excl_list {int type; struct stab_excl_list* next; scalar_t__ val; int offset; } ;
typedef int flagword ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef char bfd_byte ;
typedef scalar_t__ bfd_boolean ;
typedef int bfd ;
struct TYPE_8__ {scalar_t__ size; int flags; int rawsize; int output_section; } ;
typedef TYPE_1__ asection ;
struct TYPE_9__ {int size; } ;


 int BFD_ASSERT (int) ;
 scalar_t__ FALSE ;
 scalar_t__ ISDIGIT (char const) ;
 scalar_t__ N_BINCL ;
 scalar_t__ N_EINCL ;
 scalar_t__ N_EXCL ;
 int SEC_DEBUGGING ;
 int SEC_EXCLUDE ;
 int SEC_HAS_CONTENTS ;
 int SEC_KEEP ;
 int SEC_LINKER_CREATED ;
 int SEC_READONLY ;
 int SEC_RELOC ;
 int STABSIZE ;
 int STRDXOFF ;
 scalar_t__ TRUE ;
 size_t TYPEOFF ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int *,TYPE_1__*,long) ;
 int _bfd_stringtab_add (int *,char const*,scalar_t__,scalar_t__) ;
 int * _bfd_stringtab_init () ;
 int _bfd_stringtab_size (int *) ;
 void* bfd_alloc (int *,int) ;
 int bfd_error_bad_value ;
 int bfd_get_32 (int *,char*) ;
 struct stab_link_includes_totals* bfd_hash_allocate (int *,int) ;
 scalar_t__ bfd_hash_lookup (int *,char const*,scalar_t__,scalar_t__) ;
 int bfd_hash_table_init (int *,int ,int) ;
 scalar_t__ bfd_is_abs_section (int ) ;
 TYPE_4__* bfd_make_section_anyway_with_flags (int *,char*,int) ;
 int bfd_malloc_and_get_section (int *,TYPE_1__*,char**) ;
 void* bfd_realloc (char*,scalar_t__) ;
 int bfd_set_error (int ) ;
 int free (char*) ;
 scalar_t__ memcmp (void*,char*,scalar_t__) ;
 int memset (int*,int ,size_t) ;
 int stab_link_includes_newfunc ;
 int stub1 (int ,int *,TYPE_1__*,long) ;

bfd_boolean
_bfd_link_section_stabs (bfd *abfd,
    struct stab_info *sinfo,
    asection *stabsec,
    asection *stabstrsec,
    void * *psecinfo,
    bfd_size_type *pstring_offset)
{
  bfd_boolean first;
  bfd_size_type count, amt;
  struct stab_section_info *secinfo;
  bfd_byte *stabbuf = ((void*)0);
  bfd_byte *stabstrbuf = ((void*)0);
  bfd_byte *sym, *symend;
  bfd_size_type stroff, next_stroff, skip;
  bfd_size_type *pstridx;

  if (stabsec->size == 0
      || stabstrsec->size == 0)

    return TRUE;

  if (stabsec->size % STABSIZE != 0)


    return TRUE;

  if ((stabstrsec->flags & SEC_RELOC) != 0)


    return TRUE;

  if (bfd_is_abs_section (stabsec->output_section)
      || bfd_is_abs_section (stabstrsec->output_section))


    return TRUE;

  first = FALSE;

  if (sinfo->stabstr == ((void*)0))
    {
      flagword flags;


      first = TRUE;
      sinfo->strings = _bfd_stringtab_init ();
      if (sinfo->strings == ((void*)0))
 goto error_return;

      (void) _bfd_stringtab_add (sinfo->strings, "", TRUE, TRUE);
      if (! bfd_hash_table_init (&sinfo->includes,
     stab_link_includes_newfunc,
     sizeof (struct stab_link_includes_entry)))
 goto error_return;
      flags = (SEC_HAS_CONTENTS | SEC_READONLY | SEC_DEBUGGING
        | SEC_LINKER_CREATED);
      sinfo->stabstr = bfd_make_section_anyway_with_flags (abfd, ".stabstr",
          flags);
      if (sinfo->stabstr == ((void*)0))
 goto error_return;
    }



  count = stabsec->size / STABSIZE;

  amt = sizeof (struct stab_section_info);
  amt += (count - 1) * sizeof (bfd_size_type);
  *psecinfo = bfd_alloc (abfd, amt);
  if (*psecinfo == ((void*)0))
    goto error_return;

  secinfo = (struct stab_section_info *) *psecinfo;
  secinfo->excls = ((void*)0);
  stabsec->rawsize = stabsec->size;
  secinfo->cumulative_skips = ((void*)0);
  memset (secinfo->stridxs, 0, (size_t) count * sizeof (bfd_size_type));


  if (!bfd_malloc_and_get_section (abfd, stabsec, &stabbuf)
      || !bfd_malloc_and_get_section (abfd, stabstrsec, &stabstrbuf))
    goto error_return;



  stroff = 0;




  next_stroff = pstring_offset ? *pstring_offset : 0;
  skip = 0;

  symend = stabbuf + stabsec->size;
  for (sym = stabbuf, pstridx = secinfo->stridxs;
       sym < symend;
       sym += STABSIZE, ++pstridx)
    {
      bfd_size_type symstroff;
      int type;
      const char *string;

      if (*pstridx != 0)

 continue;

      type = sym[TYPEOFF];

      if (type == 0)
 {


   stroff = next_stroff;
   next_stroff += bfd_get_32 (abfd, sym + 8);
   if (pstring_offset)
     *pstring_offset = next_stroff;
   if (! first)
     {
       *pstridx = (bfd_size_type) -1;
       ++skip;
       continue;
     }
   first = FALSE;
 }


      symstroff = stroff + bfd_get_32 (abfd, sym + STRDXOFF);
      if (symstroff >= stabstrsec->size)
 {
   (*_bfd_error_handler)
     (_("%B(%A+0x%lx): Stabs entry has invalid string index."),
      abfd, stabsec, (long) (sym - stabbuf));
   bfd_set_error (bfd_error_bad_value);
   goto error_return;
 }
      string = (char *) stabstrbuf + symstroff;
      *pstridx = _bfd_stringtab_add (sinfo->strings, string, TRUE, TRUE);






      if (type == (int) N_BINCL)
 {
   bfd_vma sum_chars;
   bfd_vma num_chars;
   bfd_vma buf_len = 0;
   char * symb;
   char * symb_rover;
   int nest;
   bfd_byte * incl_sym;
   struct stab_link_includes_entry * incl_entry;
   struct stab_link_includes_totals * t;
   struct stab_excl_list * ne;

   symb = symb_rover = ((void*)0);
   sum_chars = num_chars = 0;
   nest = 0;

   for (incl_sym = sym + STABSIZE;
        incl_sym < symend;
        incl_sym += STABSIZE)
     {
       int incl_type;

       incl_type = incl_sym[TYPEOFF];
       if (incl_type == 0)
  break;
       else if (incl_type == (int) N_EXCL)
  continue;
       else if (incl_type == (int) N_EINCL)
  {
    if (nest == 0)
      break;
    --nest;
  }
       else if (incl_type == (int) N_BINCL)
  ++nest;
       else if (nest == 0)
  {
    const char *str;

    str = ((char *) stabstrbuf
    + stroff
    + bfd_get_32 (abfd, incl_sym + STRDXOFF));
    for (; *str != '\0'; str++)
      {
        if (num_chars >= buf_len)
   {
     buf_len += 32 * 1024;
     symb = bfd_realloc (symb, buf_len);
     if (symb == ((void*)0))
       goto error_return;
     symb_rover = symb + num_chars;
   }
        * symb_rover ++ = * str;
        sum_chars += *str;
        num_chars ++;
        if (*str == '(')
   {

     ++str;
     while (ISDIGIT (*str))
       ++str;
     --str;
   }
      }
  }
     }

   BFD_ASSERT (num_chars == (bfd_vma) (symb_rover - symb));



   incl_entry = (struct stab_link_includes_entry * )
     bfd_hash_lookup (&sinfo->includes, string, TRUE, TRUE);
   if (incl_entry == ((void*)0))
     goto error_return;

   for (t = incl_entry->totals; t != ((void*)0); t = t->next)
     if (t->sum_chars == sum_chars
  && t->num_chars == num_chars
  && memcmp (t->symb, symb, num_chars) == 0)
       break;



   amt = sizeof *ne;
   ne = bfd_alloc (abfd, amt);
   if (ne == ((void*)0))
     goto error_return;
   ne->offset = sym - stabbuf;
   ne->val = sum_chars;
   ne->type = (int) N_BINCL;
   ne->next = secinfo->excls;
   secinfo->excls = ne;

   if (t == ((void*)0))
     {


       t = bfd_hash_allocate (&sinfo->includes, sizeof *t);
       if (t == ((void*)0))
  goto error_return;
       t->sum_chars = sum_chars;
       t->num_chars = num_chars;
       t->symb = bfd_realloc (symb, num_chars);
       t->next = incl_entry->totals;
       incl_entry->totals = t;
     }
   else
     {
       bfd_size_type *incl_pstridx;



       ne->type = (int) N_EXCL;


       free (symb);



       nest = 0;
       for (incl_sym = sym + STABSIZE, incl_pstridx = pstridx + 1;
     incl_sym < symend;
     incl_sym += STABSIZE, ++incl_pstridx)
  {
    int incl_type;

    incl_type = incl_sym[TYPEOFF];

    if (incl_type == (int) N_EINCL)
      {
        if (nest == 0)
   {
     *incl_pstridx = (bfd_size_type) -1;
     ++skip;
     break;
   }
        --nest;
      }
    else if (incl_type == (int) N_BINCL)
      ++nest;
    else if (incl_type == (int) N_EXCL)

      continue;
    else if (nest == 0)
      {
        *incl_pstridx = (bfd_size_type) -1;
        ++skip;
      }
  }
     }
 }
    }

  free (stabbuf);
  stabbuf = ((void*)0);
  free (stabstrbuf);
  stabstrbuf = ((void*)0);
  stabsec->size = (count - skip) * STABSIZE;
  if (stabsec->size == 0)
    stabsec->flags |= SEC_EXCLUDE | SEC_KEEP;
  stabstrsec->flags |= SEC_EXCLUDE | SEC_KEEP;
  sinfo->stabstr->size = _bfd_stringtab_size (sinfo->strings);




  if (skip != 0)
    {
      bfd_size_type i, offset;
      bfd_size_type *pskips;

      amt = count * sizeof (bfd_size_type);
      secinfo->cumulative_skips = bfd_alloc (abfd, amt);
      if (secinfo->cumulative_skips == ((void*)0))
 goto error_return;

      pskips = secinfo->cumulative_skips;
      pstridx = secinfo->stridxs;
      offset = 0;

      for (i = 0; i < count; i++, pskips++, pstridx++)
 {
   *pskips = offset;
   if (*pstridx == (bfd_size_type) -1)
     offset += STABSIZE;
 }

      BFD_ASSERT (offset != 0);
    }

  return TRUE;

 error_return:
  if (stabbuf != ((void*)0))
    free (stabbuf);
  if (stabstrbuf != ((void*)0))
    free (stabstrbuf);
  return FALSE;
}
