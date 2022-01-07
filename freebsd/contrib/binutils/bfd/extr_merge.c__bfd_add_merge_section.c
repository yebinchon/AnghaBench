
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct sec_merge_sec_info {void** psecinfo; int contents; int * first_str; int * htab; TYPE_2__* sec; struct sec_merge_sec_info* next; } ;
struct sec_merge_info {int * htab; struct sec_merge_sec_info* chain; struct sec_merge_info* next; } ;
typedef int bfd_size_type ;
typedef int bfd_boolean ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_1__ bfd ;
struct TYPE_8__ {int flags; unsigned int entsize; unsigned int alignment_power; scalar_t__ output_section; int size; int owner; int rawsize; } ;
typedef TYPE_2__ asection ;


 int DYNAMIC ;
 int FALSE ;
 int SEC_EXCLUDE ;
 int SEC_MERGE ;
 int SEC_RELOC ;
 int SEC_STRINGS ;
 int TRUE ;
 int abort () ;
 void* bfd_alloc (TYPE_1__*,int) ;
 int bfd_get_section_contents (int ,TYPE_2__*,int ,int ,int ) ;
 int * sec_merge_init (unsigned int,int) ;

bfd_boolean
_bfd_add_merge_section (bfd *abfd, void **psinfo, asection *sec,
   void **psecinfo)
{
  struct sec_merge_info *sinfo;
  struct sec_merge_sec_info *secinfo;
  unsigned int align;
  bfd_size_type amt;

  if ((abfd->flags & DYNAMIC) != 0
      || (sec->flags & SEC_MERGE) == 0)
    abort ();

  if (sec->size == 0
      || (sec->flags & SEC_EXCLUDE) != 0
      || sec->entsize == 0)
    return TRUE;

  if ((sec->flags & SEC_RELOC) != 0)
    {

      return TRUE;
    }

  align = sec->alignment_power;
  if ((sec->entsize < (unsigned) 1 << align
       && ((sec->entsize & (sec->entsize - 1))
    || !(sec->flags & SEC_STRINGS)))
      || (sec->entsize > (unsigned) 1 << align
   && (sec->entsize & (((unsigned) 1 << align) - 1))))
    {






      return TRUE;
    }

  for (sinfo = (struct sec_merge_info *) *psinfo; sinfo; sinfo = sinfo->next)
    if ((secinfo = sinfo->chain)
 && ! ((secinfo->sec->flags ^ sec->flags) & (SEC_MERGE | SEC_STRINGS))
 && secinfo->sec->entsize == sec->entsize
 && secinfo->sec->alignment_power == sec->alignment_power
 && secinfo->sec->output_section == sec->output_section)
      break;

  if (sinfo == ((void*)0))
    {

      sinfo = bfd_alloc (abfd, sizeof (struct sec_merge_info));
      if (sinfo == ((void*)0))
 goto error_return;
      sinfo->next = (struct sec_merge_info *) *psinfo;
      sinfo->chain = ((void*)0);
      *psinfo = sinfo;
      sinfo->htab = sec_merge_init (sec->entsize, (sec->flags & SEC_STRINGS));
      if (sinfo->htab == ((void*)0))
 goto error_return;
    }



  amt = sizeof (struct sec_merge_sec_info) + sec->size - 1;
  *psecinfo = bfd_alloc (abfd, amt);
  if (*psecinfo == ((void*)0))
    goto error_return;

  secinfo = (struct sec_merge_sec_info *) *psecinfo;
  if (sinfo->chain)
    {
      secinfo->next = sinfo->chain->next;
      sinfo->chain->next = secinfo;
    }
  else
    secinfo->next = secinfo;
  sinfo->chain = secinfo;
  secinfo->sec = sec;
  secinfo->psecinfo = psecinfo;
  secinfo->htab = sinfo->htab;
  secinfo->first_str = ((void*)0);

  sec->rawsize = sec->size;
  if (! bfd_get_section_contents (sec->owner, sec, secinfo->contents,
      0, sec->size))
    goto error_return;

  return TRUE;

 error_return:
  *psecinfo = ((void*)0);
  return FALSE;
}
