
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int subsegT ;
typedef TYPE_2__* segT ;
struct TYPE_9__ {unsigned int stab_string_size; } ;
struct TYPE_11__ {TYPE_1__ stabu; } ;
struct TYPE_10__ {char const* name; } ;


 int SEC_DEBUGGING ;
 int SEC_READONLY ;
 int SEPARATE_STAB_SECTIONS ;
 int abort () ;
 int bfd_set_section_flags (int ,TYPE_2__*,int) ;
 char* frag_more (unsigned int) ;
 TYPE_2__* now_seg ;
 int now_subseg ;
 TYPE_5__* seg_info (TYPE_2__*) ;
 int stdoutput ;
 int strcpy (char*,char const*) ;
 unsigned int strlen (char const*) ;
 TYPE_2__* subseg_new (char const*,int ) ;
 int subseg_set (TYPE_2__*,int ) ;
 char const* xstrdup (char const*) ;

unsigned int
get_stab_string_offset (const char *string, const char *stabstr_secname)
{
  unsigned int length;
  unsigned int retval;
  segT save_seg;
  subsegT save_subseg;
  segT seg;
  char *p;

  if (! SEPARATE_STAB_SECTIONS)
    abort ();

  length = strlen (string);

  save_seg = now_seg;
  save_subseg = now_subseg;


  seg = subseg_new (stabstr_secname, 0);

  retval = seg_info (seg)->stabu.stab_string_size;
  if (retval <= 0)
    {

      p = frag_more (1);
      *p = 0;
      retval = seg_info (seg)->stabu.stab_string_size = 1;
      bfd_set_section_flags (stdoutput, seg, SEC_READONLY | SEC_DEBUGGING);
      if (seg->name == stabstr_secname)
 seg->name = xstrdup (stabstr_secname);
    }

  if (length > 0)
    {
      p = frag_more (length + 1);
      strcpy (p, string);

      seg_info (seg)->stabu.stab_string_size += length + 1;
    }
  else
    retval = 0;

  subseg_set (save_seg, save_subseg);

  return retval;
}
