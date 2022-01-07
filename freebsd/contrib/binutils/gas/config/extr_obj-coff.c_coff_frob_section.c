
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int symbolS ;
typedef TYPE_2__* segT ;
struct TYPE_16__ {int fr_address; int fr_fix; char* fr_literal; struct TYPE_16__* fr_next; int fr_offset; } ;
typedef TYPE_3__ fragS ;
typedef int bfd_vma ;
typedef int bfd_byte ;
struct TYPE_17__ {TYPE_1__* frchainP; } ;
struct TYPE_15__ {int name; scalar_t__ alignment_power; } ;
struct TYPE_14__ {TYPE_3__* frch_root; TYPE_3__* frch_last; } ;


 int C_STAT ;
 int OCTETS_PER_BYTE_POWER ;
 int SA_SET_SCN_SCNLEN (int *,int) ;
 int SF_SET_STATICS (int *) ;
 int STAB_SECTION_NAME ;
 int STAB_STRING_SECTION_NAME ;
 int S_SET_NUMBER_AUXILIARY (int *,int) ;
 int S_SET_STORAGE_CLASS (int *,int ) ;
 int assert (int) ;
 int bfd_get_section_size (TYPE_2__*) ;
 int bfd_h_put_16 (int ,int,int *) ;
 int bfd_h_put_32 (int ,int,int *) ;
 int bfd_set_section_size (int ,TYPE_2__*,int) ;
 TYPE_2__* bss_section ;
 TYPE_2__* data_section ;
 int * section_symbol (TYPE_2__*) ;
 TYPE_6__* seg_info (TYPE_2__*) ;
 int stdoutput ;
 int streq (int ,int ) ;
 TYPE_2__* subseg_get (int ,int ) ;
 TYPE_2__* text_section ;

void
coff_frob_section (segT sec)
{
  segT strsec;
  char *p;
  fragS *fragp;
  bfd_vma size, n_entries, mask;
  bfd_vma align_power = (bfd_vma)sec->alignment_power + OCTETS_PER_BYTE_POWER;






  size = bfd_get_section_size (sec);
  mask = ((bfd_vma) 1 << align_power) - 1;

  if (size & mask)
    {
      bfd_vma new_size;
      fragS *last;

      new_size = (size + mask) & ~mask;
      bfd_set_section_size (stdoutput, sec, new_size);



      fragp = seg_info (sec)->frchainP->frch_root;
      last = seg_info (sec)->frchainP->frch_last;
      while (fragp->fr_next != last)
 fragp = fragp->fr_next;
      last->fr_address = size;
      fragp->fr_offset += new_size - size;
    }






  if (size != 0
      || sec == text_section
      || sec == data_section
      || sec == bss_section)

    {
      symbolS *secsym = section_symbol (sec);

      S_SET_STORAGE_CLASS (secsym, C_STAT);
      S_SET_NUMBER_AUXILIARY (secsym, 1);
      SF_SET_STATICS (secsym);
      SA_SET_SCN_SCNLEN (secsym, size);
    }
  if (! streq (".stabstr", sec->name))
    return;

  strsec = sec;
  sec = subseg_get (".stab", 0);

  size = bfd_get_section_size (strsec);

  n_entries = bfd_get_section_size (sec) / 12 - 1;


  fragp = seg_info (sec)->frchainP->frch_root;
  while (fragp && fragp->fr_fix == 0)
    fragp = fragp->fr_next;
  assert (fragp != 0 && fragp->fr_fix >= 12);


  p = fragp->fr_literal;
  bfd_h_put_16 (stdoutput, n_entries, (bfd_byte *) p + 6);
  bfd_h_put_32 (stdoutput, size, (bfd_byte *) p + 8);
}
